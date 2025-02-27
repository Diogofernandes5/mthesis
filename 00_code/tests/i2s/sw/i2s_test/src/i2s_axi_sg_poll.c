/******************************************************************************
* Copyright (C) 2010 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
 *
 * @file xaxidma_example_sg_poll.c
 *
 * This file demonstrates how to use the xaxidma driver on the Xilinx AXI
 * DMA core (AXIDMA) to transfer packets in polling mode when the AXIDMA
 * core is configured in Scatter Gather Mode.
 *
 * This code assumes a loopback hardware widget is connected to the AXI DMA
 * core for data packet loopback.
 *
 * To see the debug print, you need a Uart16550 or uartlite in your system,
 * and please set "-DDEBUG" in your compiler options. You need to rebuild your
 * software executable.
 *
 * Make sure that MEMORY_BASE is defined properly as per the HW system. The
 * h/w system built in Area mode has a maximum DDR memory limit of 64MB. In
 * throughput mode, it is 512MB.  These limits are need to ensured for
 * proper operation of this code.
 */
/***************************** Include Files *********************************/
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "xi2srx.h"
#include "xil_printf.h"

#ifdef __aarch64__
#include "xil_mmu.h"
#endif

#if defined(XPAR_UARTNS550_0_BASEADDR)
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
#include "xintc.h"
#include <stdio.h>
#else
#include "xscugic.h"
#endif
/******************** Constant Definitions **********************************/

/*
 * Device hardware build related constants.
 */

/* I2S */
#define I2S_RX_DEVICE_ID	XPAR_XI2SRX_0_DEVICE_ID
#define I2S_RX_INTERRUPT_ID	2 //XPAR_FABRIC_I2SRX_0_VEC_ID

#ifdef XPAR_INTC_0_DEVICE_ID
#define RX_INTR_ID		XPAR_INTC_0_AXIDMA_0_S2MM_INTROUT_VEC_ID
#else
#define RX_INTR_ID		XPAR_FABRIC_AXIDMA_0_VEC_ID
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif /* XPAR_INTC_0_DEVICE_ID */

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC		XIntc
#define INTC_HANDLER	XIntc_InterruptHandler
#else
#define INTC			XScuGic
#define INTC_HANDLER	XScuGic_InterruptHandler
#endif /* XPAR_INTC_0_DEVICE_ID */

#define I2S_RX_FS		44.1 //kHz
#define I2S_RX_MCLK		(384 * I2S_RX_FS)
#define I2S_RX_TIME_OUT 500000

/* DMA */ 
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

/* DDR and HW related constants */
#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif defined (XPAR_MIG7SERIES_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif defined (XPAR_MIG_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif defined (XPAR_PSU_DDR_0_S_AXI_BASEADDR)
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
			DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BD_SPACE_BASE	(MEM_BASE_ADDR)
#define TX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x00000FFF)
#define RX_BD_SPACE_BASE	(MEM_BASE_ADDR + 0x00001000)
#define RX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x00001FFF)
#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)


#define MAX_PKT_LEN		0x20
#define MARK_UNCACHEABLE        0x701

/*
 * Number of BDs in the transfer example
 * We show how to submit multiple BDs for one transmit.
 * The receive side gets one completion per transfer.
 */
#define NUMBER_OF_BDS_PER_PKT		12
#define NUMBER_OF_PKTS_TO_TRANSFER 	11
#define NUMBER_OF_BDS_TO_TRANSFER	(NUMBER_OF_PKTS_TO_TRANSFER * \
						NUMBER_OF_BDS_PER_PKT)

/* The interrupt coalescing threshold and delay timer threshold
 * Valid range is 1 to 255
 *
 * We set the coalescing threshold to be the total number of packets.
 * The receive side will only get one completion interrupt for this example.
 */
#define COALESCING_COUNT		NUMBER_OF_PKTS_TO_TRANSFER
#define DELAY_TIMER_COUNT		100

/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

// #define TEST_START_VALUE	0xC

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/
#if defined(XPAR_UARTNS550_0_BASEADDR)
static void Uart550_Setup(void);
#endif

static int AxiRxSetup(XAxiDma * AxiDmaInstPtr);

// static int CheckData(void);
// static int CheckDmaResult(XAxiDma * AxiDmaInstPtr);

static void RxCallBack(XAxiDma_BdRing * RxRingPtr);
static void RxIntrHandler(void *Callback);

int I2sConfig(INTC *IntcInstancePtr, XI2s_Rx *I2sRxInstancePtr,
		u16 DeviceId, u16 IntrId);

static int SetupIntrSystem(INTC * IntcInstancePtr,
			   XAxiDma * AxiDmaPtr, u16 RxIntrId);
static void DisableIntrSystem(INTC * IntcInstancePtr,
					u16 TxIntrId, u16 RxIntrId);
// static int I2sRxSetupIntrSystem(INTC *IntcInstancePtr,
// 		XI2s_Rx *I2sRxInstancePtr,
// 		u16 DeviceId, u16 IntrId);

// void I2sRxDisableIntr(INTC *IntcInstancePtr, u16 IntrId);

// void I2sRxAesBlockCmplIntrHandler(void *CallBackRef);

// void I2sRxOvrflwIntrHandler(void *CallBackRef);

static int PrintResult(void);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;

volatile uint8_t data_ready = 0;

static INTC Intc;	/* Instance of the Interrupt Controller */
INTC InterruptController;	/* The instance of the Interrupt Controller */
XI2s_Rx I2sRxInstance;		/* Instance of the I2S receiver device */
u32 IntrReceived;

/*
 * Flags interrupt handlers use to notify the application context the events.
 */
volatile int RxDone;
volatile int Error;

/*****************************************************************************/
/**
*
* Main function
*
* This function is the main entry of the tests on DMA core. It sets up
* DMA engine to be ready to receive and send packets, then a packet is
* transmitted and will be verified after it is received via the DMA loopback
* widget.
*
* @param	None
*
* @return
*		- XST_SUCCESS if test passes
*		- XST_FAILURE if test fails.
*
* @note		None.
*
******************************************************************************/
int main(void)
{
	int Status;
	XAxiDma_Config *Config;
	int counter = 0;
	int RxDone_aux = 0;

#if defined(XPAR_UARTNS550_0_BASEADDR)
	Uart550_Setup();
#endif

	xil_printf("\r\n--- Entering main() --- \r\n");

	I2sConfig(&InterruptController, &I2sRxInstance,
			I2S_RX_DEVICE_ID, I2S_RX_INTERRUPT_ID);

#ifdef __aarch64__
	Xil_SetTlbAttributes(RX_BD_SPACE_BASE, MARK_UNCACHEABLE);
#endif

	Config = XAxiDma_LookupConfig(DMA_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DMA_DEV_ID);

		return XST_FAILURE;
	}

	/* Initialize DMA engine */
	Status = XAxiDma_CfgInitialize(&AxiDma, Config);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(!XAxiDma_HasSg(&AxiDma)) {
		xil_printf("Device configured as Simple mode \r\n");

		return XST_FAILURE;
	}

	/* Initialize flags before start transfer test  */
	RxDone = 0;
	Error = 0;

	Status = AxiRxSetup(&AxiDma);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Set up Interrupt system  */
	Status = SetupIntrSystem(&Intc, &AxiDma, RX_INTR_ID);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed intr setup\r\n");
		return XST_FAILURE;
	}

	while (1){
		if(RxDone != RxDone_aux) {
			RxDone_aux = RxDone;
			/* Check DMA transfer result */
			Status = PrintResult();
		}
	}

	if (Status != XST_SUCCESS) {
		xil_printf("AXI DMA SG Polling Example Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran AXI DMA SG Polling Example\r\n");
	xil_printf("--- Exiting main() --- \r\n");

	return XST_SUCCESS;
}

static int PrintResult(void)
{
	int *RxPacket;
	int Index = 0;

	RxPacket = (int *) RX_BUFFER_BASE;

	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
	Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN);

	for(Index = 0; Index < MAX_PKT_LEN; Index++) {
		xil_printf("Data[%d]: %x\r\n",
			    Index, (int)RxPacket[Index]);
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* @param	None
*
* @return	- XST_SUCCESS if validation is successful
*		- XST_FAILURE if validation is failure.
*
* @note		None.
*
******************************************************************************/
// static int CheckData(void)
// {
// 	int *RxPacket;
// 	int Index = 0;

// 	RxPacket = (int *) RX_BUFFER_BASE;

// 	/* Invalidate the DestBuffer before receiving the data, in case the
// 	 * Data Cache is enabled
// 	 */
// 	Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN);

// 	for(Index = 0; Index < MAX_PKT_LEN; Index++) {
// 		xil_printf("Data[%d]: %x\r\n",
// 			    Index, (int)RxPacket[Index]);
// 	}

// 	return XST_SUCCESS;
// }

// /*****************************************************************************/
// /**
// *
// * This function waits until the DMA transaction is finished, checks data,
// * and cleans up.
// *
// * @param	None
// *
// * @return	- XST_SUCCESS if DMA transfer is successful and data is correct,
// *		- XST_FAILURE if fails.
// *
// * @note		None.
// *
// ******************************************************************************/
// static int CheckDmaResult(XAxiDma * AxiDmaInstPtr)
// {
// 	XAxiDma_BdRing *RxRingPtr;
// 	XAxiDma_Bd *BdPtr;
// 	int ProcessedBdCount;
// 	int FreeBdCount;
// 	int Status;

// 	RxRingPtr = XAxiDma_GetRxRing(AxiDmaInstPtr);

// 	/* Wait until the data has been received by the Rx channel */
// 	while ((ProcessedBdCount = XAxiDma_BdRingFromHw(RxRingPtr,
// 						       XAXIDMA_ALL_BDS,
// 						       &BdPtr)) == 0) {
// 	}

// 	/* Check received data */
// 	if (CheckData() != XST_SUCCESS) {

// 		return XST_FAILURE;
// 	}

// 	/* Free all processed RX BDs for future transmission */
// 	Status = XAxiDma_BdRingFree(RxRingPtr, ProcessedBdCount, BdPtr);
// 	if (Status != XST_SUCCESS) {
// 		xil_printf("Failed to free %d rx BDs %d\r\n",
// 		    ProcessedBdCount, Status);
// 		return XST_FAILURE;
// 	}

// 	/* Return processed BDs to RX channel so we are ready to receive new
// 	 * packets:
// 	 *    - Allocate all free RX BDs
// 	 *    - Pass the BDs to RX channel
// 	 */
// 	FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);
// 	Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
// 	if (Status != XST_SUCCESS) {
// 		xil_printf("bd alloc failed\r\n");
// 		return XST_FAILURE;
// 	}

// 	Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);
// 	if (Status != XST_SUCCESS) {
// 		xil_printf("Submit %d rx BDs failed %d\r\n", FreeBdCount, Status);
// 		return XST_FAILURE;
// 	}

// 	return XST_SUCCESS;
// }

/*****************************************************************************/
/*
*
* This is the DMA RX callback function called by the RX interrupt handler.
* This function handles finished BDs by hardware, attaches new buffers to those
* BDs, and give them back to hardware to receive more incoming packets
*
* @param	RxRingPtr is a pointer to RX channel of the DMA engine.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void RxCallBack(XAxiDma_BdRing * RxRingPtr)
{
	int BdCount;
	XAxiDma_Bd *BdPtr;
	XAxiDma_Bd *BdCurPtr;
	u32 BdSts;
	int Index;

	/* Get finished BDs from hardware */
	BdCount = XAxiDma_BdRingFromHw(RxRingPtr, XAXIDMA_ALL_BDS, &BdPtr);

	BdCurPtr = BdPtr;
	for (Index = 0; Index < BdCount; Index++) {

		/*
		 * Check the flags set by the hardware for status
		 * If error happens, processing stops, because the DMA engine
		 * is halted after this BD.
		 */
		BdSts = XAxiDma_BdGetSts(BdCurPtr);
		if ((BdSts & XAXIDMA_BD_STS_ALL_ERR_MASK) ||
		    (!(BdSts & XAXIDMA_BD_STS_COMPLETE_MASK))) {
			Error = 1;
			break;
		}

		/* Find the next processed BD */
		BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);
		RxDone += 1; //(RxDone + 1) & 0x400;
	}

}

/*****************************************************************************/
/*
*
* This is the DMA RX interrupt handler function
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* presents, then it calls the callback function.
*
* @param	Callback is a pointer to RX channel of the DMA engine.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void RxIntrHandler(void *Callback)
{
	XAxiDma_BdRing *RxRingPtr = (XAxiDma_BdRing *) Callback;
	u32 IrqStatus;
	int TimeOut;

	/* Read pending interrupts */
	IrqStatus = XAxiDma_BdRingGetIrq(RxRingPtr);

	/* Acknowledge pending interrupts */
	XAxiDma_BdRingAckIrq(RxRingPtr, IrqStatus);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

		XAxiDma_BdRingDumpRegs(RxRingPtr);

		Error = 1;

		/* Reset could fail and hang
		 * NEED a way to handle this or do not call it??
		 */
		XAxiDma_Reset(&AxiDma);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if(XAxiDma_ResetIsDone(&AxiDma)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If completion interrupt is asserted, call RX call back function
	 * to handle the processed BDs and then raise the according flag.
	 */
	if ((IrqStatus & (XAXIDMA_IRQ_DELAY_MASK | XAXIDMA_IRQ_IOC_MASK))) {
		RxCallBack(RxRingPtr);
	}
}

/*****************************************************************************/
/**
 * This function does a minimal test on the I2S receiver device and driver
 * as a  design example.  The purpose of this function is to illustrate how
 * to use the XI2s_Rx component.  It initializes a I2S receiver and then
 * sets it up such that a periodic interrupt is generated.
 *
 * This function uses interrupt driven mode of the I2S receiver.
 *
 * @param	IntcInstancePtr is a pointer to the Interrupt Controller
 *		driver Instance
 * @param	I2sRxInstancePtr is a pointer to the XI2s_Rx driver Instance
 * @param	DeviceId is the XPAR_<i2s_rx_instance>_DEVICE_ID value from
 *		xparameters.h
 * @param	IntrId is XPAR_<INTC_instance>_<i2s_rx_instance>_INTERRUPT_INTR
 *		value from xparameters.h
 *
 * @return	XST_SUCCESS if the Test is successful, otherwise XST_FAILURE
 *
 *****************************************************************************/
int I2sConfig(INTC *IntcInstancePtr, XI2s_Rx *I2sRxInstancePtr,
		u16 DeviceId, u16 IntrId)
{
	xil_printf("I2s Receiver\r\n");
	int Status;
	XI2srx_Config *Config;
	// u32 IntrCount =0;
	/*
	 * Lookup and Initialize the I2S receiver so that it's ready to use.
	 */
	Config = XI2s_Rx_LookupConfig(DeviceId);
	if (Config == NULL)
		return XST_FAILURE;

	Status = XI2s_Rx_CfgInitialize(I2sRxInstancePtr, Config,
			Config->BaseAddress);
	if (Status != XST_SUCCESS)
		return XST_FAILURE;
	/*
	 * Connect the I2S receiver counter to the interrupt
	 * subsystem such that interrupts can occur.
	 * This function is application specific.
	 */
	// Status = I2sRxSetupIntrSystem(IntcInstancePtr, I2sRxInstancePtr,
	// 		DeviceId, IntrId);
	// if (Status != XST_SUCCESS)
	// 	return XST_FAILURE;

	/*
	 * Setup the handler for the I2S receiver that will be called from the
	 * interrupt context when the I2S receiver receives a block complete
	 * interrupt or Underflow interrupt.
	 */

	// XI2s_Rx_SetHandler(I2sRxInstancePtr, XI2S_RX_HANDLER_AES_BLKCMPLT,
	// 		&I2sRxAesBlockCmplIntrHandler,
	// 		(void *)I2sRxInstancePtr);
	// XI2s_Rx_SetHandler(I2sRxInstancePtr, XI2S_RX_HANDLER_AUD_OVRFLW,
	// 		&I2sRxOvrflwIntrHandler, (void *)I2sRxInstancePtr);
	XI2s_Rx_SetSclkOutDiv(I2sRxInstancePtr, I2S_RX_MCLK,I2S_RX_FS);
	XI2s_Rx_SetChMux(I2sRxInstancePtr, 0x0, XI2S_RX_CHMUX_XI2S_01);
	// XI2s_Rx_IntrEnable(I2sRxInstancePtr, XI2S_RX_GINTR_EN_MASK);
	// XI2s_Rx_IntrEnable(I2sRxInstancePtr, XI2S_RX_INTR_AES_BLKCMPLT_MASK);
	// XI2s_Rx_IntrEnable(I2sRxInstancePtr, XI2S_RX_INTR_AUDOVRFLW_MASK);
	XI2s_Rx_Enable(I2sRxInstancePtr, TRUE);
	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnable();
	// while (IntrCount < I2S_RX_TIME_OUT) {
	// 	//	while(1) {
	// 	/* Wait until an interrupts has been received. */
	// 	if (IntrReceived == 1) {
	// 		break;
	// 	}
	// 	IntrCount++;

	// 	Status =  XST_SUCCESS;
	// }
	return XST_SUCCESS;
}

/*****************************************************************************/
/*
*
* This function setups the interrupt system so interrupts can occur for the
* DMA, it assumes INTC component exists in the hardware system.
*
* @param	IntcInstancePtr is a pointer to the instance of the INTC.
* @param	AxiDmaPtr is a pointer to the instance of the DMA engine
* @param	TxIntrId is the TX channel Interrupt ID.
* @param	RxIntrId is the RX channel Interrupt ID.
*
* @return
*		- XST_SUCCESS if successful,
*		- XST_FAILURE.if not successful
*
* @note		None.
*
******************************************************************************/
static int SetupIntrSystem(INTC * IntcInstancePtr,
			   XAxiDma * AxiDmaPtr, u16 RxIntrId)
{
	XAxiDma_BdRing *RxRingPtr = XAxiDma_GetRxRing(AxiDmaPtr);
	int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

	/* Initialize the interrupt controller and connect the ISRs */
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed init intc\r\n");
		return XST_FAILURE;
	}

	Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
			       (XInterruptHandler) RxIntrHandler, RxRingPtr);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed rx connect intc\r\n");
		return XST_FAILURE;
	}

	/* Start the interrupt controller */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed to start intc\r\n");
		return XST_FAILURE;
	}

	XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

	XScuGic_Config *IntcConfig;


	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
				(Xil_InterruptHandler)RxIntrHandler,
				RxRingPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	XScuGic_Enable(IntcInstancePtr, RxIntrId);
#endif

	/* Enable interrupts from the hardware */

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)INTC_HANDLER,
			(void *)IntcInstancePtr);

	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function disables the interrupts for DMA engine.
*
* @param	IntcInstancePtr is the pointer to the INTC component instance
* @param	TxIntrId is interrupt ID associated w/ DMA TX channel
* @param	RxIntrId is interrupt ID associated w/ DMA RX channel
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void DisableIntrSystem(INTC * IntcInstancePtr,
					u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
	/* Disconnect the interrupts for the DMA TX and RX channels */
	XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
	XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}

/*****************************************************************************/
/*
*
* This function sets up RX channel of the DMA engine to be ready for packet
* reception
*
* @param	AxiDmaInstPtr is the pointer to the instance of the DMA engine.
*
* @return	- XST_SUCCESS if the setup is successful.
*		- XST_FAILURE if fails.
*
* @note		None.
*
******************************************************************************/
static int AxiRxSetup(XAxiDma * AxiDmaInstPtr)
{
	XAxiDma_BdRing *RxRingPtr;
	int Status;
	XAxiDma_Bd BdTemplate;
	XAxiDma_Bd *BdPtr;
	XAxiDma_Bd *BdCurPtr;
	int BdCount;
	int FreeBdCount;
	UINTPTR RxBufferPtr;
	int Index;

	RxRingPtr = XAxiDma_GetRxRing(&AxiDma);

	/* Disable all RX interrupts before RxBD space setup */
	XAxiDma_BdRingIntDisable(RxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	/* Setup Rx BD space */
	BdCount = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT,
				RX_BD_SPACE_HIGH - RX_BD_SPACE_BASE + 1);

	Status = XAxiDma_BdRingCreate(RxRingPtr, RX_BD_SPACE_BASE,
					RX_BD_SPACE_BASE,
					XAXIDMA_BD_MINIMUM_ALIGNMENT, BdCount);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx bd create failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	/*
	 * Setup a BD template for the Rx channel. Then copy it to every RX BD.
	 */
	XAxiDma_BdClear(&BdTemplate);
	Status = XAxiDma_BdRingClone(RxRingPtr, &BdTemplate);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx bd clone failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Attach buffers to RxBD ring so we are ready to receive packets */
	FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);

	Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx bd alloc failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	BdCurPtr = BdPtr;
	RxBufferPtr = RX_BUFFER_BASE;

	for (Index = 0; Index < FreeBdCount; Index++) {

		Status = XAxiDma_BdSetBufAddr(BdCurPtr, RxBufferPtr);
		if (Status != XST_SUCCESS) {
			xil_printf("Rx set buffer addr %x on BD %x failed %d\r\n",
			(unsigned int)RxBufferPtr,
			(UINTPTR)BdCurPtr, Status);

			return XST_FAILURE;
		}

		Status = XAxiDma_BdSetLength(BdCurPtr, MAX_PKT_LEN,
					RxRingPtr->MaxTransferLen);
		if (Status != XST_SUCCESS) {
			xil_printf("Rx set length %d on BD %x failed %d\r\n",
			    MAX_PKT_LEN, (UINTPTR)BdCurPtr, Status);

			return XST_FAILURE;
		}

		/* Receive BDs do not need to set anything for the control
		 * The hardware will set the SOF/EOF bits per stream status
		 */
		XAxiDma_BdSetCtrl(BdCurPtr, 0);

		XAxiDma_BdSetId(BdCurPtr, RxBufferPtr);

		RxBufferPtr += MAX_PKT_LEN;
		BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);
	}

	/*
	 * Set the coalescing threshold, so only one receive interrupt
	 * occurs for this example
	 *
	 * If you would like to have multiple interrupts to happen, change
	 * the COALESCING_COUNT to be a smaller value
	 */
	Status = XAxiDma_BdRingSetCoalesce(RxRingPtr, COALESCING_COUNT,
			DELAY_TIMER_COUNT);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx set coalesce failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx ToHw failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Enable all RX interrupts */
	XAxiDma_BdRingIntEnable(RxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	/* Start RX DMA channel */
	Status = XAxiDma_BdRingStart(RxRingPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Rx start BD ring failed with %d\r\n", Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

#if defined(XPAR_UARTNS550_0_BASEADDR)
/*****************************************************************************/
/*
*
* Uart16550 setup routine, need to set baudrate to 9600, and data bits to 8
*
* @param	None
*
* @return	None
*
* @note		None.
*
******************************************************************************/
static void Uart550_Setup(void)
{

	/* Set the baudrate to be predictable
	 */
	XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
			XPAR_XUARTNS550_CLOCK_HZ, 9600);

	XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
			XUN_LCR_8_DATA_BITS);

}
#endif
