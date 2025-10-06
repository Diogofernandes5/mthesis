#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

#include "lwip/inet.h"

#include "globals.h"

#include "xil_io.h"

#include "xil_cache.h"

/**************** DEFINES ******************/
#define THREAD_STACKSIZE 1024

#define TCP_SERVER_IP_ADDRESS "192.168.1.100"

#define TXI_WORDS_TO_SEND 	N
#define TXI_BYTES_TO_SEND 	(TXI_WORDS_TO_SEND*sizeof(u32))
// N*J1*2=256*4*2
#define TXO_WORDS_TO_SEND 	2*N_J1
#define TXO_BYTES_TO_SEND 	(TXO_WORDS_TO_SEND*sizeof(u32))

#define RECV_BUF_SIZE 		64

#define SPI_ENABLE 			0

#define ACK_MSG 			"ACK_OK"
#define ACK_MSG_LEN 		11

/**************** VARIABLES ******************/
u16_t echo_port = 5000;

u8_t connected = 0;

extern volatile SemaphoreHandle_t TxoDoneSemaphore;

TaskHandle_t TxoTask = NULL;
TaskHandle_t recvTask = NULL;

u8_t ack_received = 0;

void txo_thread(void *p)
{
	int sd = (int)p;
	u32 *ddr;
	u32 mem_addr;
	header eder;
	u8 eder_buf[ACK_MSG_LEN];
	u32_t txo_count = 0;

	eder.op = TXO_OP;
	eder.len = TXO_BYTES_TO_SEND;

	while (1) {
		if(connected)
		{
			// Can use 0 in the blocking time to make the semaphore take polling
			if (xSemaphoreTake(TxoDoneSemaphore, portMAX_DELAY) != pdTRUE) {
				xil_printf("[TXO] FAILED taking semaphore!\n\r");
//				vTaskDelete(xTimerTask);
				break;
			}
			eder.id = txo_count;
			serialize_header(&eder, eder_buf);

			xil_printf("[TXO] Sending header [op,id,len(bytes)]: [%s,%d,%d(%d)]...\n\r", "txo", txo_count, TXO_WORDS_TO_SEND, TXO_BYTES_TO_SEND);
			if (send(sd, &eder_buf, sizeof(eder_buf), 0) < 0) {
				xil_printf("[TXO] Failed to send header!\n\r");
				break;
			}

			mem_addr = (txo_count % 2 == 0) ? TXO_BASE_ADDR : (TXO_BASE_ADDR + TXO_BYTES_TO_SEND);
			ddr = (u32*)(DDR_BASE_ADDR + mem_addr);

			Xil_DCacheInvalidateRange((UINTPTR)ddr, TXO_BYTES_TO_SEND);
			for(int i = 10; i>0;i--);

			if (send(sd, ddr, TXO_BYTES_TO_SEND, 0) < 0) {
				xil_printf("[TXO] Failed to send data!\n\r");
				break;
			}

			int notified = ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(1000));

			if (notified <= 0) {
				xil_printf("[TXO] ACK not received!\n\r");
				break;
			}

			txo_count++;

			xil_printf("[TXO] Received ACK!\n\r");
			Xil_Out32(SLAVE_ADDR + (sizeof(uint32_t)*ACK_OUTDATA_SLVR), 1); // send ACK
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

			xil_printf("Received %s\n\r",recv_buf);

			if(!strncmp(recv_buf, ACK_MSG, ACK_MSG_LEN)) {
				xTaskNotifyGive(TxoTask);  // Unblock sender task
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
				if(TxoTask != NULL) {
					int stat = eTaskGetState(TxoTask);
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
				Xil_Out32(SLAVE_ADDR + (sizeof(uint32_t)*ECONNECTED_SLVR), connected); // send connected message

				TxoTask = sys_thread_new("send", txo_thread,
												(void*)sock,
												THREAD_STACKSIZE,
												DEFAULT_THREAD_PRIO);

				recvTask = sys_thread_new("recv", recv_thread,
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

void serialize_header(const struct header *h, uint8_t *buf) {
    uint8_t  op = htonl(h->op);
    uint32_t id = htonl(h->id);
    uint16_t len = htons(h->len);

    memcpy(buf, 	&op,  sizeof(op));
    memcpy(buf + 1, &id,  sizeof(id));
    memcpy(buf + 5, &len, sizeof(p->len));
}