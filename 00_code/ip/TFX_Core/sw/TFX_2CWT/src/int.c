#include "xparameters.h"
#include "xscugic.h"

#include "FreeRTOS.h"
#include "semphr.h"

#include "globals.h"

#define TXO_DONE_INTR XPAR_FABRIC_TFX_CORE_V1_0_0_TXO_DONE_O_INTR

volatile SemaphoreHandle_t TxoDoneSemaphore;

static void TxoDoneHandler()
{
	BaseType_t xHigherPriorityTaskWoken = pdFALSE;

	if (xSemaphoreGiveFromISR(TXO_DONE_INTR, &xHigherPriorityTaskWoken) != pdFALSE) {
		portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
	}
}


int SetupInterruptSystem(XScuGic *IntcInstancePtr)
{
	TxoDoneSemaphore = xSemaphoreCreateBinary();
	if (TxoDoneSemaphore == NULL) {
		xil_printf("Failed to create TxoDone Semaphore!\n\rAborting...\n\r");
		return XST_FAILURE;
	}

	// Register interrupt handler using FreeRTOS-aware function
	xPortInstallInterruptHandler(TXO_DONE_INTR, TxoDoneHandler, NULL);

	// Enable the interrupt line
	vPortEnableInterrupt(TXO_DONE_INTR);

	return XST_SUCCESS;
}

