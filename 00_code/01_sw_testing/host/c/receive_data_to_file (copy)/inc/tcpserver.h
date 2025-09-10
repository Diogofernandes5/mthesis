/**
 * @file       tcpserver.h
 * @author     Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#ifndef     __TCPSERVER_H__
#define     __TCPSERVER_H__

#include <pthread.h>
#include <netinet/in.h>

/******************************************************************************
Defines and macros
******************************************************************************/


/******************************************************************************
Data structures
******************************************************************************/
enum client_state_enum {	// define client_socket_info->states
	THREAD_DEAD,
	THREAD_ALIVE,
	THREAD_DISCONNECTED
};

typedef struct client_socket_into client_socket_info_t;
struct client_socket_into
{
	// Socket
	int sockfd;		// socket file descrictor
	enum client_state_enum state;
	int index;

	// Data
	int recv_len;
	int *recv_buf;
	int data_available;
};

extern pthread_mutex_t cli_mutex;
extern pthread_cond_t data_ready_cond;

/******************************************************************************
Function Prototypes
******************************************************************************/

void *thread_send(void *arg);
void *thread_recv(void *arg);

void init_tcpserver(int port, int *sd_listen, struct sockaddr_in *sock_addr, int max_client_num);
void close_connection(void *arg);


#endif //__TCPSERVER_H__