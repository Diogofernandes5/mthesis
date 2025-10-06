#include "tcpserver.h"

#include <sys/socket.h>
#include <netdb.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>

#include <unistd.h> // gethostname
#include <signal.h>

#include "utils.h"

#define BUFFER_LEN				2048

pthread_mutex_t cli_mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t data_ready_cond = PTHREAD_COND_INITIALIZER;

static void deserialize_header(const uint8_t *buf, header_t *h);

void close_connection(void *arg)
{
	client_socket_info_t *client_info = (client_socket_info_t *) arg;

	if(client_info->state != THREAD_ALIVE)
		return NULL;

	// close the client's channel
	shutdown(client_info->sockfd,SHUT_RD);
	shutdown(client_info->sockfd,SHUT_WR);
	shutdown(client_info->sockfd,SHUT_RDWR);	

	client_info->state = THREAD_DISCONNECTED;
}

int recv_all(int sockfd, void *buffer, size_t length) {
    size_t received = 0;
    while (received < length) {
        ssize_t r = recv(sockfd, (char *)buffer + received, length - received, 0);
        // printf("recv_all: asked %ld bytes, got %ld\n", length - received, r);
        if (r == 0) {
            printf("recv_all: connection closed by peer\n");
            return -1;
        } else if (r < 0) {
            perror("recv_all: recv error");
            return -1;
        }
        received += r;
    }
    return received;
}

void *thread_recv(void *arg)                    
{	
	client_socket_info_t *info = (client_socket_info_t *) arg;            /* get & convert the socket */
	// char buffer_exit[BUFFER_LEN];
	// int int_data;
	// uint16_t err_num = 0;
	uint8_t recv_eder_buf[9];
	header_t eder;
	int *buffer;

	pthread_cleanup_push(close_connection, info);

	while(info->state==THREAD_ALIVE)
	{
		// receive header
		if (recv_all(info->sockfd, &recv_eder_buf, sizeof(recv_eder_buf)) < 0) {
	        printf("[RECV] Failed to receive header!\n\r");
	        return NULL;
    	}

    	deserialize_header(recv_eder_buf, &eder); // convert from network to host order

    	// sprintf(buffer_exit, "%d", eder.len);
		// if(strcmp(buffer_exit, "exit") == 0){
		// 	close_connection(&info->index);
		// 	break;
		// }

	    if (eder.len % sizeof(uint32_t) != 0) { // is length valid?
	        printf("[RECV] Invalid length: %d\n", eder.len);
	        return NULL;
	    }

	    // transform bytes in words
	    size_t count = eder.len / sizeof(uint32_t);
	    printf("[RECV] Receive length (words): %ld\n", count);

	    // Allocate buffer to receive
	    if (!(buffer = (int *) malloc(eder.len)))
		    panic("Memory allocation failed\n\r");

		// receive data
	    if (recv_all(info->sockfd, buffer, eder.len) < 0) {
	        free(buffer);
	        panic("Failed to receive data");
	    }
	    
	    pthread_mutex_lock(&cli_mutex);
		
		info->eder = eder;
	    info->recv_buf = buffer;
	    info->data_available = 1;

		// signal consumer thread to wake up
		pthread_cond_signal(&data_ready_cond); 
		pthread_mutex_unlock(&cli_mutex);
	}
	
	pthread_cleanup_pop(1);
	return NULL;
}

void *thread_send(void *arg)                    
{	
	client_socket_info_t *info = (client_socket_info_t *) arg;            /* get & convert the socket */
	char buffer[BUFFER_LEN];

	pthread_cleanup_push(close_connection, info);

	while(info->state==THREAD_ALIVE)
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
	return NULL;
}

void init_tcpserver(int port, int *sd_listen, struct sockaddr_in *sock_addr, int max_client_num)
{
    /*--- create socket ---*/
    *sd_listen = socket(PF_INET, SOCK_STREAM, 0);
    if (*sd_listen < 0)
        panic("socket");

    /*--- bind port/address to socket ---*/
    memset(sock_addr, 0, sizeof(*sock_addr));
    sock_addr->sin_family = AF_INET;
    sock_addr->sin_port = htons(port);  // Convert to network byte order
    sock_addr->sin_addr.s_addr = htonl(INADDR_ANY);  //  Also convert to network byte order

    if (bind(*sd_listen, (struct sockaddr *)sock_addr, sizeof(*sock_addr)) != 0)
        panic("bind");

    /*--- make into listener with max_client_num slots ---*/
    if (listen(*sd_listen, max_client_num) != 0)
        panic("listen");

    /*--- begin waiting for connections ---*/
    printf("------ SERVER ------\n");

    char host_name[BUFFER_LEN];
    if (gethostname(host_name, BUFFER_LEN) != 0)
        perror("gethostname");
    else
        printf("Starting server on %s:%d\n", host_name, port);

    printf("Listening for incoming connections on sockfd: %d\n", *sd_listen);
}

static void deserialize_header(const uint8_t *buf, header_t *h) {
    uint8_t op;
    uint32_t id;
    uint32_t len;

    memcpy(&op,  buf, 	sizeof(op));
    memcpy(&id,  buf+1, sizeof(id));
    memcpy(&len, buf+5, sizeof(len));

    h->op  = ntohl(op);
    h->id  = ntohl(id);
    h->len = ntohl(len);
}