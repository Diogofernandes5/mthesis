#ifndef __TIMER_H__
#define __TIMER_H__

#include "xparameters.h"

#include "xttcps.h"
#include "FreeRTOS.h"
#include "semphr.h"

extern SemaphoreHandle_t timerSemaphore;
extern TaskHandle_t xTimerTask;

void setupTimer(void *pvParameters);

#endif /*__TIMER_H__*/
