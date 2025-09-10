#include <sys/socket.h>
#include <sys/types.h>
#include <resolv.h>
#include <pthread.h>
#include <netdb.h>
#include <stdlib.h>
#include <string.h>

#include <ctype.h>	
#include <unistd.h> // gethostname
#include <signal.h>
#include <sys/time.h>
#include <mqueue.h>

void panic(char *msg);
#define panic(m)	{perror(m); abort();}

// define client_socket_info->states
#define THREAD_DEAD 	0
#define THREAD_ALIVE 	1

#define BUFFER_LEN				2048

// max length of a message queue
#define MSG_LEN     			10000

// client check status time
#define CLI_CHK_TIME			5

#define MAX_CLIENT_NUM			5

// clients counter
_Atomic unsigned int cli_count = 0;

typedef struct client_socket_into client_socket_info_t;
struct client_socket_into
{
	int sockfd;		//socket file descrictor
	int state;
	int index;
}; 

client_socket_info_t socket_table[MAX_CLIENT_NUM];

pthread_mutex_t clients_mutex = PTHREAD_MUTEX_INITIALIZER;

void close_connection(void *client_num)
{
	int index = *(int*)client_num;

	if(socket_table[index].state != THREAD_ALIVE)
		return;

	// close the client's channel
	shutdown(socket_table[index].sockfd,SHUT_RD);
	shutdown(socket_table[index].sockfd,SHUT_WR);
	shutdown(socket_table[index].sockfd,SHUT_RDWR);	

	socket_table[index].state = THREAD_DEAD;
	cli_count--;

	printf("Client(%d) closed connection (%d slots available)\n",
			socket_table[index].sockfd,
			MAX_CLIENT_NUM - cli_count);
}

static void sig_handler(int signum)
{
	if(signum == SIGINT)
	{
		// close all existent connections
		printf("Server closing...\n");
		for(int i = 0; i < cli_count; i++)
		{
			// notify client to close his connection
			if(socket_table[i].state != THREAD_DEAD) {
				send(socket_table[i].sockfd, "exit", 4, 0);
				close_connection(&i);
				printf("Client(%d) connection closed\n", socket_table[i].sockfd);
			}
		}

		printf("Server closed\n");
		exit(0);
	}
	else {
		printf("Another error occured!\n\r");
		exit(0);
	}
}

int recv_all(int sockfd, void *buffer, size_t length) {
    size_t received = 0;
    while (received < length) {
        ssize_t r = recv(sockfd, (char *)buffer + received, length - received, 0);
        if (r == 0) {
            printf("recv_all: connection closed by peer\n");
            return -1;
        } else if (r < 0) {
            perror("recv_all: recv error");
            return -1;
        }
        received += r;
    }
    return 0;
}

void check_sequence(uint32_t *data, size_t count) {
    for (size_t i = 0; i < count; ++i) {
        if (data[i] != i) {
            printf("Mismatch at index %zu: got %u, expected %u\n", i, data[i], (unsigned)(i));
            return;
        }
    }
    printf("Data is correct!\n");
}

void *thread_recv(void *arg)                    
{	
	client_socket_info_t *info = (client_socket_info_t *) arg;            /* get & convert the socket */
	// char buffer_exit[BUFFER_LEN];
	int int_data;
	uint16_t err_num = 0;
	int32_t rcv_len;
	uint32_t *buffer;

	pthread_cleanup_push(close_connection, &(info->index));

	while(socket_table[info->index].state==THREAD_ALIVE)
	{
		// printf("Exiting receive loop: socket state = %d\n", socket_table[info->index].state);
		// receive lenght of data
		if (recv_all(info->sockfd, &rcv_len, sizeof(rcv_len)) < 0) {
	        printf("Failed to receive length\n\r");
	        return;
    	}

    	// sprintf(buffer_exit, "%d", rcv_len);
		// if(strcmp(buffer_exit, "exit") == 0){
		// 	close_connection(&info->index);
		// 	break;
		// }

    	rcv_len = ntohl(rcv_len);
	    if (rcv_len % sizeof(uint32_t) != 0) {
	        printf("Invalid length: %d\n", rcv_len);
	        return;
	    }

	    size_t count = rcv_len / sizeof(uint32_t);
	    printf("Receive length (words): %d\n", count);

	    if (!(buffer = (uint32_t *) malloc(rcv_len)))
		    panic("Memory allocation failed\n\r");

	    if (recv_all(info->sockfd, buffer, rcv_len) < 0) {
	        free(buffer);
	        panic("Failed to receive data");
	    }

	    check_sequence(buffer, count);
	    free(buffer);
	}
	
	pthread_cleanup_pop(1);
	return 0;                           /* terminate the thread */
}

void *thread_send(void *arg)                    
{	
	client_socket_info_t *info = (client_socket_info_t *) arg;            /* get & convert the socket */
	char buffer[BUFFER_LEN];

	pthread_cleanup_push(close_connection, &(info->index));

	while(socket_table[info->index].state==THREAD_ALIVE)
	{
		scanf("%s", buffer);

		// char msg[BUFFER_LEN];
		// snprintf(msg, BUFFER_LEN, "%s", buffer);
		// // broadcast message to all clients
		// for(int i=0; i<MAX_CLIENT_NUM; i++)
		// {
		// 	if(socket_table[i].state==THREAD_ALIVE)
		// 		send(socket_table[i].sockfd, msg, BUFFER_LEN, 0);
		// }

		if(strcmp(buffer, "exit") == 0)
			// force close all client connections
			raise(SIGINT);
	}

	pthread_cleanup_pop(1);				
	return 0;  							/* terminate the thread */
}

int main(int argc, char *args[]){
	int port, listen_sd;
	struct sockaddr_in addr;

	if ( argc != 2 )
	{
		printf("usage: %s <protocol or portnum>\n", args[0]);
		exit(0);
	}

	if ( !isdigit(args[1][0]) )		// server name entered
	{
		struct servent *srv = getservbyname(args[1], "tcp");
		if ( srv == NULL )
			panic(args[1]);
		printf("%s: port=%d\n", srv->s_name, ntohs(srv->s_port));
		port = srv->s_port;
	}
	else 							// port entered
		port = htons(atoi(args[1]));

	/*--- create socket ---*/
	listen_sd = socket(PF_INET, SOCK_STREAM, 0);
	if ( listen_sd < 0 )
		panic("socket");

	/*--- bind port/address to socket ---*/
	memset(&addr, 0, sizeof(addr));	/*set addr as 0000... (sizeof(addr))*/
	addr.sin_family = AF_INET;		/* protocol family*/
	addr.sin_port = port;
	addr.sin_addr.s_addr = INADDR_ANY;                   /* any interface */
	if ( bind(listen_sd, (struct sockaddr*)&addr, sizeof(addr)) != 0 )
		panic("bind");

	/*--- make into listener with MAX_CLIENT_NUM slots ---*/
	if ( listen(listen_sd, MAX_CLIENT_NUM) != 0 )
		panic("listen")

	/*--- begin waiting for connections ---*/
	printf("------ SERVER ------\n");

	signal(SIGINT, sig_handler);
	signal(SIGPIPE, SIG_IGN);
	signal(SIGSEGV, sig_handler);  // define a handler to catch segmentation faults
	signal(SIGABRT, sig_handler);  // also catch aborts

	char host_name[BUFFER_LEN];
	gethostname(host_name, BUFFER_LEN);
	printf("Starting server on %s:%d\n", host_name, atoi(args[1]));
	printf("Listening for incoming connections on sockfd:%d\n", listen_sd);

	while (1)                         /* process all incoming clients */
	{
		//int i=0;
		int n = sizeof(addr); 
		int sd = accept(listen_sd, (struct sockaddr*)&addr, &n);     /* accept connection */

		if(sd!=-1 && (cli_count<MAX_CLIENT_NUM))	// connection without errors 
		{
			socket_table[cli_count].sockfd=sd;
			socket_table[cli_count].state=THREAD_ALIVE;		/*means connection opened*/
			socket_table[cli_count].index=cli_count;

			printf("Client(%d) connected (%d slots available)\n",
				sd,
				MAX_CLIENT_NUM - (cli_count+1));

			pthread_t child_recv;
			pthread_create(&child_recv, 0, thread_recv, &socket_table[cli_count]);       /* start thread */
			
			pthread_t child_send;
			pthread_create(&child_send, 0, thread_send, &socket_table[cli_count]);
			cli_count++;
			
			pthread_detach(child_recv);                      /* don't track it */
			pthread_detach(child_send);                      /* don't track it */

			close_connection(&cli_count);
		}
		else{
			close(sd);
			printf("Cannot accept new connection\n");
		}
	}

	return 0;
}
