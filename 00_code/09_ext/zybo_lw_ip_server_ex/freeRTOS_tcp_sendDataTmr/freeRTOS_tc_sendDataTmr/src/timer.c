#include "timer.h"

#include "xil_exception.h"

/*------TTC------*/
#define	TIMER_DEVICE_ID		XPAR_PS7_TTC_3_DEVICE_ID

#define TIMER_INTR_ID		XPAR_XTTCPS_3_INTR

#define TIMER_FREQ 		50 //Hz

/* Instance for ttcps */
static XTtcPs xTimerInstance;

SemaphoreHandle_t timerSemaphore;
TaskHandle_t xTimerTask;

static void TimerHandler(XTtcPs *InstancePtr)
{
	BaseType_t xHigherPriorityTaskWoken = pdFALSE;
	u32 XTtcPsStatusReg;
	Xil_AssertNonvoid(InstancePtr != NULL);

	XTtcPsStatusReg = XTtcPs_GetInterruptStatus(InstancePtr);
	XTtcPs_ClearInterruptStatus(InstancePtr, XTtcPsStatusReg);
//	XTtcPs_Stop(InstancePtr);

	if ( xSemaphoreGiveFromISR( timerSemaphore, &xHigherPriorityTaskWoken ) != pdFALSE) {
		portYIELD_FROM_ISR( xHigherPriorityTaskWoken );
	}
}

void setupTimer(void *pvParameters)
{
	int xStatus;

	timerSemaphore = xSemaphoreCreateBinary();
	if ( timerSemaphore == NULL ) {
		xil_printf("Failed to create semaphore\n");
		return XST_FAILURE;
	}

	XTtcPs_Config *pxTimerConfig;
	XInterval usInterval;
	uint8_t ucPrescaler;

	pxTimerConfig = XTtcPs_LookupConfig( TIMER_DEVICE_ID );

	xStatus = XTtcPs_CfgInitialize( &xTimerInstance, pxTimerConfig, pxTimerConfig->BaseAddress );
	if ( xStatus != XST_SUCCESS ) {
		XTtcPs_Stop(&xTimerInstance);
		xStatus = XTtcPs_CfgInitialize( &xTimerInstance, pxTimerConfig, pxTimerConfig->BaseAddress );
		if ( xStatus != XST_SUCCESS ) {
			xil_printf( "In %s: Timer Cfg initialization failed...\r\n", __func__ );
			return;
		}
	}

	XTtcPs_SetOptions( &xTimerInstance, XTTCPS_OPTION_INTERVAL_MODE | XTTCPS_OPTION_WAVE_DISABLE );

	// Calculate interval from the frequency given
//	XTtcPs_CalcIntervalFromFreq( &xTimerInstance, TIMER_FREQ, &usInterval, &ucPrescaler );
//	XTtcPs_CalcIntervalFromFreq( &xTimerInstance, configTICK_RATE_HZ * 2, &usInterval, &ucPrescaler );
	XTtcPs_CalcIntervalFromFreq( &xTimerInstance, 1, &usInterval, &ucPrescaler ); // 1 Hz
	XTtcPs_SetInterval( &xTimerInstance, usInterval );
	XTtcPs_SetPrescaler( &xTimerInstance, ucPrescaler );
	XTtcPs_EnableInterrupts( &xTimerInstance, XTTCPS_IXR_INTERVAL_MASK );
	/* Register the ttcps Timer interrupt handler with interrupt controller */

	xPortInstallInterruptHandler( TIMER_INTR_ID, (Xil_ExceptionHandler)TimerHandler, &xTimerInstance );
	/* Enable interrupt for TTC1 instance */
	vPortEnableInterrupt(TIMER_INTR_ID);
	XTtcPs_Start( &xTimerInstance );

	xil_printf("Waiting for semaphore, FreeRTOS tick count is %x\n\r", xTaskGetTickCount());
}
