#ifndef GLOBALS_H
#define GLOBALS_H

#define N 		256
#define J1 		4

#define N_J1 	N*J1

/*------DDR------*/
// DDR Base address
//#define DDR_BASE_ADDR 	XPAR_PS7_DDR_0_S_AXI_BASEADDR
//#define DDR_BASE_ADDR 	0x0FFFFFFC
#define DDR_BASE_ADDR 	0x10000000

#define ACC_BASE_ADDR 	0x00000000
#define CWT_BASE_ADDR	0x10000000

/*------CONFIG ADDR-----*/
#define SLAVE_ADDR			0x43C00000
#define ECONNECTED_SLVR 	0
#define SPI_ENABLE_SLVR 	1
#define ACK_OUTDATA_SLVR 	2
#define ACK_INDATA_SLVR		3


// Useful shared defines
/*------TIMER------*/
#define DELAY_10_SECONDS		10000UL
#define DELAY_1_SECOND			1000UL
#define TIMER_CHECK_THRESHOLD	9
#define DELAY_100_MILISEC		100UL
#define DELAY_10_MILISEC		10UL

#endif
