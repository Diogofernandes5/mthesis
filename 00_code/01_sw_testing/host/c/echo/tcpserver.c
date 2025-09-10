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

// host name len
// #define NAME_LEN 				16

#define BUFFER_LEN				256

// // mesage queue name size
// #define MSG_QUEUE_NAME_LEN		16

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
	// char name[NAME_LEN];

	// mqd_t msgq_id;	// message queue id
	// char msgq_name[MSG_QUEUE_NAME_LEN]; // name of the message queue
}; 

client_socket_info_t socket_table[MAX_CLIENT_NUM];

pthread_mutex_t clients_mutex = PTHREAD_MUTEX_INITIALIZER;

/*void broadcast_message(char* s, int index){
	for(int i=0; i<MAX_CLIENT_NUM; ++i){
		if(socket_table[i].state==THREAD_ALIVE && socket_table[i].index!=index)
			send(socket_table[i].sockfd, s, sizeof(s), 0);
	}
}*/

void close_connection(void *client_num)
{
	int index = *(int*)client_num;

	// printf("close %d connection\n", socket_table[index].sockfd);
	if(socket_table[index].state != THREAD_ALIVE)
		return;

	// close the client's channel
	shutdown(socket_table[index].sockfd,SHUT_RD);
	shutdown(socket_table[index].sockfd,SHUT_WR);
	shutdown(socket_table[index].sockfd,SHUT_RDWR);	

	// closing the queue
	// mq_close(socket_table[index].msgq_id); 
	
	// // After unlink message queue is removed from system.
	// if (mq_unlink(socket_table[index].msgq_name) == -1)
   	// 	panic("In mq_unlink()");

	socket_table[index].state = THREAD_DEAD;
	cli_count--;

	// printf("Client(%d) '%s' closed connection (%d slots available)\n",
	// 		socket_table[index].sockfd,
	// 		socket_table[index].name,
	// 		MAX_CLIENT_NUM - cli_count);

	printf("Client(%d) closed connection (%d slots available)\n",
			socket_table[index].sockfd,
			MAX_CLIENT_NUM - cli_count);
}

static void sig_handler(int signum)
{
	// if(signum == SIGALRM)
	// {
	// 	static const char msg[32] = "State?";
	// 	char msgcontent[MSG_LEN];

	// 	for(int i = 0; i < MAX_CLIENT_NUM; i++)
	// 	{
	// 		// send a periodic message for every alive thread
	// 		if(socket_table[i].state == THREAD_ALIVE)
	// 		{

	// 			mq_send(socket_table[i].msgq_id, msg, strlen(msg)+1, 1);

	// 			if (mq_receive(socket_table[i].msgq_id, msgcontent,
	// 				MSG_LEN, NULL) == -1)
	// 			{
	// 				mq_close(socket_table[i].msgq_id);
	// 	    		panic("In mq_receive()");
	// 			}

	// 			// printf("%s(%d) state: %s\n", socket_table[i].name,
	// 			// 						socket_table[i].sockfd,
	// 			// 						msgcontent);
	// 		}
	// 	}
	// }
	// else 
	if(signum == SIGINT)
	{
		// close all existent connections
		printf("Server closing...\n");
		for(int i = 0; i < cli_count; i++)
		{
			// notify client to close his connection
			if(socket_table[i].state == THREAD_DEAD) {
				send(socket_table[i].sockfd, "exit", 4, 0);
				close_connection(&i);
				printf("Client(%d) connection closed\n", socket_table[i].sockfd);
			}
		}

		printf("Server closed\n");
		exit(0);
	}
}

// void my_alarm(int seconds)
// {
// 	struct itimerval itv;

// 	// set handling of SIGALRM
// 	signal(SIGALRM,sig_handler);

// 	// period between successive timer interrupts
// 	itv.it_interval.tv_sec = seconds;
// 	itv.it_interval.tv_usec = 0;

// 	// period between now and the first timer interrupt
// 	itv.it_value.tv_sec = seconds;
// 	itv.it_value.tv_usec = 0;
// 	setitimer (ITIMER_REAL, &itv, NULL);
// }

void *thread_recv(void *arg)                    
{	
	client_socket_info_t *info = (client_socket_info_t *) arg;            /* get & convert the socket */
	char buffer[BUFFER_LEN];

	pthread_cleanup_push(close_connection, &(info->index));

	while(socket_table[info->index].state==THREAD_ALIVE)
	{
		// receive message
		recv(info->sockfd,buffer,sizeof(buffer),0);

		if(strcmp(buffer, "exit") == 0){
			close_connection(&info->index);
			break;
		}
		
		char msg[BUFFER_LEN];
		snprintf(msg, MSG_LEN, "Client (%d) said: %s", 
							info->sockfd, buffer);
		printf("%s\n", msg);

		// broadcast received message from client
		for(int i = 0; i < MAX_CLIENT_NUM; i++)
		{
			// send to the alive threads and not send to the client who sent the message
			if((socket_table[i].state==THREAD_ALIVE) && (socket_table[i].index != info->index))
				send(socket_table[i].sockfd, msg, BUFFER_LEN, 0);
		}
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

		char msg[BUFFER_LEN];
		snprintf(msg, BUFFER_LEN, "%s", buffer);

		// broadcast message to all clients
		for(int i=0; i<MAX_CLIENT_NUM; i++)
		{
			if(socket_table[i].state==THREAD_ALIVE)
				send(socket_table[i].sockfd, msg, BUFFER_LEN, 0);
		}

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

	char host_name[BUFFER_LEN];
	gethostname(host_name, BUFFER_LEN);
	printf("Starting server on %s:%d\n", host_name, atoi(args[1]));
	printf("Listening for incoming connections on sockfd:%d\n", listen_sd);

	// signal(SIGINT, sig_handler);
	// set a periodic alarm for every CHK_CLI_STAT_TIME seconds
	//to check client status
	// my_alarm(CLI_CHK_TIME);

	// for(int i = 0; i < MAX_CLIENT_NUM; i++){
	// 	close_connection(&i);
	// }

	while (1)                         /* process all incoming clients */
	{
		//int i=0;
		int n = sizeof(addr); 
		int sd = accept(listen_sd, (struct sockaddr*)&addr, &n);     /* accept connection */

		if(sd!=-1 && (cli_count<MAX_CLIENT_NUM))	// connection without errors 
		{
			// mqd_t msgq_id;

			// // message queue named equal to the socket file descriptor
			// snprintf(socket_table[cli_count].msgq_name, MSG_QUEUE_NAME_LEN,
			// 		"/cli_%d", sd);
			
		    // create the queue using default attributes
		    // msgq_id = mq_open(socket_table[cli_count].msgq_name,
		    // 					O_RDWR | O_CREAT | O_EXCL,
		    // 					S_IRWXU | S_IRWXG, NULL);

		    // if (msgq_id == (mqd_t)-1){
		    // 	// printf("\n\rcreating %s\n\r", socket_table[cli_count].msgq_name);
		    //     // panic("In mq_open()");
		    //     close(sd);
			//     perror("mq_open() failed");
			//     continue; // Skip this client instead of panicking
		    // }

		    // //send msg queue name to the client
			// send(sd, socket_table[cli_count].msgq_name, MSG_QUEUE_NAME_LEN, 0);

			// // receive client hostname
			// if (mq_receive(msgq_id, socket_table[cli_count].name,
			// 				MSG_LEN, NULL) == -1) 
			// {
			// 	mq_close(msgq_id);
		    //     // panic("In mq_receive()");
		    //     close(sd);
		    //     perror("mq_receive() failed");
			//     continue; // Skip this client instead of panicking
			// }

			socket_table[cli_count].sockfd=sd;
			socket_table[cli_count].state=THREAD_ALIVE;		/*means connection opened*/
			socket_table[cli_count].index=cli_count;
			// socket_table[cli_count].msgq_id = msgq_id;

			// printf("Client(%d) '%s' connected (%d slots available)\n",
			// 	sd,
			// 	socket_table[cli_count].name, 
			// 	MAX_CLIENT_NUM - (cli_count+1));

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
