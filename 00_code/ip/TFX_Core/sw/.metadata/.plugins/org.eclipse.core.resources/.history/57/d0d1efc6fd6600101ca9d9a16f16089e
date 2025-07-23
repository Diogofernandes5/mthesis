#include <stdio.h>
#include <string.h>

#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"

#include "lwip/inet.h"

#include "globals.h"

#include "xil_io.h"

/**************** DEFINES ******************/
#define THREAD_STACKSIZE 1024

#define TCP_SERVER_IP_ADDRESS "192.168.1.100"

#define ACC_WORDS_TO_SEND 	N
#define ACC_BYTES_TO_SEND 	(ACC_WORDS_TO_SEND*sizeof(u32))
// N*J1*2=256*4*2
#define CWT_WORDS_TO_SEND 	2*N_J1
#define CWT_BYTES_TO_SEND 	(CWT_WORDS_TO_SEND*sizeof(u32))

#define RECV_BUF_SIZE 		CWT_WORDS_TO_SEND

#define SPI_ENABLE 	0

/**************** PROTOTYPES ******************/
void fill_ddr(u32 size);

/**************** VARIABLES ******************/
u16_t echo_port = 5000;

u8_t connected = 0;

extern volatile SemaphoreHandle_t CwtDoneSemaphore;
extern volatile SemaphoreHandle_t AccDoneSemaphore;

unsigned int cwt_count = 0;

void send_data_thread(void *p)
{
	int sd = (int)p;
	int32_t len = 0;
	u32 *ddr;
	u32 mem_addr;

//	const TickType_t x10seconds = pdMS_TO_TICKS(DELAY_10_SECONDS);

//	fill_ddr(WORDS_TO_SEND);

	while (1) {
		if(connected)
		{
			if(SPI_ENABLE) {
				if (xSemaphoreTake(AccDoneSemaphore, portMAX_DELAY) != pdTRUE) {
					xil_printf("[ACC] FAILED taking semaphore!\n\r");
					break;
				}

				xil_printf("[ACC] Sending size (bytes): %d\n\r", ACC_BYTES_TO_SEND);
				// send size first
				len = htonl(ACC_BYTES_TO_SEND); // network byte order

				if (send(sd, &len, sizeof(len), 0) < 0) {
					xil_printf("[ACC] Failed to send length\n\r");
					break;
				}

				mem_addr = (cwt_count % 2 == 0) ? ACC_BASE_ADDR : (ACC_BASE_ADDR + ACC_BYTES_TO_SEND);
				ddr = (u32*)(DDR_BASE_ADDR + mem_addr);
				if (send(sd, ddr, ACC_BYTES_TO_SEND, 0) < 0) {
					xil_printf("[ACC] Failed to send data\n\r");
					break;
				}
			}

			// Can use 0 in the blocking time to make the semaphore take polling
			if (xSemaphoreTake(CwtDoneSemaphore, portMAX_DELAY) != pdTRUE) {
				xil_printf("[CWT] FAILED taking semaphore!\n\r");
//				vTaskDelete(xTimerTask);
				break;
			}

			xil_printf("[CWT] Sending size (bytes): %d (%d)\n\r", CWT_WORDS_TO_SEND, CWT_BYTES_TO_SEND);
			// send size first
			len = htonl(CWT_BYTES_TO_SEND); // network byte order

			if (send(sd, &len, sizeof(len), 0) < 0) {
			    xil_printf("[CWT] Failed to send length\n\r");
			    break;
			}

			mem_addr = (cwt_count % 2 == 0) ? CWT_BASE_ADDR : (CWT_BASE_ADDR + CWT_BYTES_TO_SEND);
			ddr = (u32*)(DDR_BASE_ADDR + mem_addr);
			if (send(sd, ddr, CWT_BYTES_TO_SEND, 0) < 0) {
			    xil_printf("[CWT] Failed to send data\n\r");
			    break;
			}

			cwt_count++;
		}
	}

	/* close connection */
//	write(sd, "exit", 4);

//	close(sd);
	vTaskDelete(NULL);
}

void recv_thread(void *p)
{
	int sd = (int)p;
	char recv_buf[RECV_BUF_SIZE];
	int n = 0;

	while (1) {
		if(connected)
		{
			if ((n = read(sd, recv_buf, RECV_BUF_SIZE)) < 0) {
				xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sd);
				break;
			}

			/* break if the recved message = "quit" */
			if (!strncmp(recv_buf, "exit", 4)) {
				connected = 0;
				Xil_Out32(SLAVE_ADDR + (sizeof(uint32_t)*ECONNECTED_SLVR), connected); // send connected message
				xil_printf("Server closed connection...\r\n");
				break;
			}

			/* break if server closed connection */
			if (n <= 0) {
				connected = 0;
				Xil_Out32(SLAVE_ADDR + (sizeof(uint32_t)*ECONNECTED_SLVR), connected); // send connected message
				xil_printf("Unexpectedly disconnected from server...\r\n");
				break;
			}
		}
	}

	/* close connection */
//	write(sd, "exit", 4);

//	close(sd);
	vTaskDelete(NULL);
}

void connect_thread()
{
	int sock;
	struct sockaddr_in address;
	int status = -1;
	xTaskHandle sendTask = NULL;

	memset(&address, 0, sizeof(address));

	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return;

	address.sin_family = AF_INET;
	address.sin_port = htons(echo_port);
	address.sin_addr.s_addr = inet_addr(TCP_SERVER_IP_ADDRESS);

	xil_printf("\r\nTrying to connect to server...\r\n\r\n");
	while(1) {
		while ( (status < 0) || !connected ) {
			status = lwip_connect(sock, (struct sockaddr *)&address, sizeof(address));
			if(status < 0) {
				xil_printf("Couldn't connect to server! Trying again...\n\r");

				// don't do nothing more if send task is still active
				// waits for the send thread to quit (only after send data function fails)
				if(sendTask != NULL) {
					int stat = eTaskGetState(sendTask);
					while(stat == eRunning);
				}

				close(sock);
				if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
					break;
				vTaskDelay(pdMS_TO_TICKS(5000)); // Wait 5 seconds before retry
			}
			else {
				xil_printf("\r\nConnected to server!\r\n");
				connected = 1;// Connected successfully
				Xil_Out32(SLAVE_ADDR + (sizeof(uint32_t)*ECONNECTED_SLVR), 1); // send connected message
				// Using brom vals (0) or SPI (1)
				Xil_Out32(SLAVE_ADDR + (sizeof(uint32_t)*SPI_ENABLE_SLVR), SPI_ENABLE);

				sendTask = sys_thread_new("send", send_data_thread,
												(void*)sock,
												THREAD_STACKSIZE,
												DEFAULT_THREAD_PRIO);

				sys_thread_new("recv", recv_thread,
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
