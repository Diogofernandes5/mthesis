/*
 * Copyright (C) 2016 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include <string.h>

#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"

#include "lwip/inet.h"

#define THREAD_STACKSIZE 1024

#define TCP_SERVER_IP_ADDRESS "192.168.1.100"

#define RECV_BUF_SIZE 2048

u16_t echo_port = 5000;

u8_t connected = 0;

//void print_echo_app_header()
//{
//    xil_printf("%20s %6d", "echo server", echo_port);
//    xil_printf(" $ telnet <board_ip> %6d\r\n", echo_port);
//}

/* thread spawned for each connection */
void process_echo_request(void *p)
{
	int sd = (int)p;
	char recv_buf[RECV_BUF_SIZE];
	int n, nwrote;

	while (1) {
		if(connected)
		{
			/* read a max of RECV_BUF_SIZE bytes from socket */
			if ((n = read(sd, recv_buf, RECV_BUF_SIZE)) < 0) {
				xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sd);
				break;
			}

			/* break if the recved message = "quit" */
			if (!strncmp(recv_buf, "exit", 4)) {
				connected = 0;
				xil_printf("Server closed connection...\r\n");
				break;
			}

			/* break if server closed connection */
			if (n <= 0) {
				write(sd, "exit", 4);
				connected = 0;
				xil_printf("Unexpectedly disconnected from server...\r\n");
				break;
			}


//			xil_printf("Server said: %s\r\n", recv_buf);

			/* handle request */
			if ((nwrote = write(sd, recv_buf, n)) < 0) {
				xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
						__FUNCTION__, n, nwrote);
				xil_printf("Closing socket %d\r\n", sd);
				break;
			}
		}
	}

	/* close connection */
//	write(sd, "exit", 4);
	close(sd);
	vTaskDelete(NULL);
}

void echo_application_thread()
{
	int sock;
#if LWIP_IPV6==0
	struct sockaddr_in address;//, remote;
	int status = -1;

	memset(&address, 0, sizeof(address));

	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return;

	address.sin_family = AF_INET;
	address.sin_port = htons(echo_port);
	address.sin_addr.s_addr = inet_addr(TCP_SERVER_IP_ADDRESS);

#else
	struct sockaddr_in6 address, remote;

	memset(&address, 0, sizeof(address));

	address.sin6_len = sizeof(address);
	address.sin6_family = AF_INET6;
	address.sin6_port = htons(echo_port);

	memset(&(address.sin6_addr), 0, sizeof(address.sin6_addr));

	if ((sock = lwip_socket(AF_INET6, SOCK_STREAM, 0)) < 0)
		return;
#endif

	xil_printf("\r\nTrying to connect to server...\r\n\r\n");
	while(1) {
		while ( (status < 0) || !connected ) {
			status = lwip_connect(sock, (struct sockaddr *)&address, sizeof(address));
			if(status < 0) {
				xil_printf("Couldn't connect to server! Trying again...\n\r");
				close(sock);
				if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
					return;
				vTaskDelay(pdMS_TO_TICKS(5000)); // Wait 2 seconds before retry
			}
			else {
				xil_printf("\r\nConnected to server!\r\n");
				connected = 1;// Connected successfully

				sys_thread_new("echos", process_echo_request,
												(void*)sock,
												THREAD_STACKSIZE,
												DEFAULT_THREAD_PRIO);
			}
		}
	}

	/* close connection */
	close(sock);
	vTaskDelete(NULL);
}
