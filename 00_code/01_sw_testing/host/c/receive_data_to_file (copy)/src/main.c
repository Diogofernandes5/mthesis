#include "tcpserver.h"
#include "utils.h"

#include <sys/socket.h>
#include <netdb.h>
#include <stdio.h>
#include <unistd.h>

#include <ctype.h>	
#include <signal.h>

/*****DEFINES AND MACROS*****/
#define N 		256
#define J1		4
#define N_J1	(N*J1)

#define SENSOR_DAT_FILENAME "/home/fernandes/thesis/00_code/matlab/output_vectors/"

#define OUTPUT_RE_FILENAME "/home/fernandes/thesis/00_code/matlab/output_vectors/"
#define OUTPUT_IM_FILENAME "/home/fernandes/thesis/00_code/matlab/output_vectors/"

#define MAX_CLIENT_NUM 		5


/*****DATA STRUCTURES*****/
client_socket_info_t socket_table[MAX_CLIENT_NUM];

// clients counter
_Atomic unsigned int cli_count = 0;
pthread_mutex_t cli_count_mutex = PTHREAD_MUTEX_INITIALIZER;

/*****FUNCTION PROTOTYPES*****/
int get_connected_clients(client_socket_info_t *socket_table);

void sig_handler(int signum);


/*****CODE*****/

int main(int argc, char *args[]){
	struct sockaddr_in addr;
	int port, listen_sd;
	
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

	init_tcpserver(port, &listen_sd, &addr, MAX_CLIENT_NUM);

	signal(SIGINT, sig_handler);

	pthread_t child_proc_data;
	pthread_create(&child_proc_data, 0, thread_recv, &socket_table);

	pthread_t child_send;
	pthread_create(&child_send, 0, thread_send, &socket_table);

	pthread_detach(child_proc_data);
	pthread_detach(child_send);

	while (1)                         /* process all incoming clients */
	{
		socklen_t n = sizeof(addr); 

		cli_count = get_connected_clients(socket_table);

		int sd = accept(listen_sd, (struct sockaddr*)&addr, &n);     /* accept connection */

		if(sd!=-1 && (cli_count<MAX_CLIENT_NUM))	// connection without errors 
		{
			socket_table[cli_count].sockfd = sd;
			socket_table[cli_count].state = THREAD_ALIVE;		/*means connection opened*/
			socket_table[cli_count].index = cli_count;
			socket_table[cli_count].recv_len = 0;
			socket_table[cli_count].recv_buf = NULL;
			socket_table[cli_count].data_available = 0;

			printf("Client(%d) connected (%d slots available)\n\r",
					sd,
					MAX_CLIENT_NUM - (cli_count+1));

			pthread_t child_recv;
			pthread_create(&child_recv, 0, thread_recv, &socket_table[cli_count]);       /* start thread */
			
			pthread_detach(child_recv);                      /* don't track it */

			close_connection(&socket_table[cli_count]);
		}
		else {
			close(sd);
			printf("Cannot accept new connection\n");
		}
	}

	return 0;
}

int any_data_available(client_socket_info_t *client_table) {
    for (int i = 0; i < MAX_CLIENT_NUM; i++) {
        if (client_table[i].data_available)
            return 1;
    }
    return 0;
}

void *thread_proc_data(void *arg)
{
	client_socket_info_t *info = (client_socket_info_t *) arg;

	pthread_mutex_lock(&cli_mutex);

	while (!any_data_available(info)) {
	    pthread_cond_wait(&data_ready_cond, &cli_mutex);
	}

	for (int i = 0; i < MAX_CLIENT_NUM; i++) {
	    if (info[i].data_available) {
	        info[i].data_available = 0;

	        if(info[i].recv_len == N)
	        	write_sensor_data_to_file(info[i].recv_buf, info[i].index, SENSOR_DAT_FILENAME, N);
	        else
	        	write_output_data_to_file(info[i].recv_buf, info[i].index, OUTPUT_RE_FILENAME, OUTPUT_IM_FILENAME, N_J1);
	    }
	}

	pthread_mutex_unlock(&cli_mutex);
	return NULL;
}  

int get_connected_clients(client_socket_info_t *socket_table) {
    int count = 0;

    pthread_mutex_lock(&cli_count_mutex);

    for (int i = 0; i < MAX_CLIENT_NUM; i++)
        if (socket_table[i].state == THREAD_DISCONNECTED)
        	printf("Client(%d) closed connection (%d slots available)\n",
			socket_table[i].sockfd,
			MAX_CLIENT_NUM - cli_count);
        else if(socket_table[i].state == THREAD_ALIVE)
            count++;

    pthread_mutex_unlock(&cli_count_mutex);

    return count;
}

void sig_handler(int signum)
{
	if(signum == SIGINT)
	{
		// close all existent connections
		printf("Server closing...\n");
		for(int i = 0; i < cli_count; i++)
		{
			// notify client to close his connection
			if(socket_table[i].state != THREAD_DEAD) {
				// send(socket_table[i].sockfd, "exit", 4, 0);
				close_connection(&socket_table[i]);
				printf("Client(%d) connection closed\n", socket_table[i].sockfd);
			}
		}

		printf("Server closed\n");
	}
	else
		printf("Another error occured!\n\r");

    exit(0);
}