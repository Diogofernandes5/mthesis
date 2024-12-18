/**
 * @file   	ics43434.h
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#ifndef __ICS43434_H__
#define __ICS43434_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "i2s.h"
#include "dma.h"

/******************************************************************************
Defines and macros
******************************************************************************/

/******************************************************************************
Data structures
******************************************************************************/

typedef struct __ics43434_dev
{
	/* Communication handler */
	I2S_HandleTypeDef *hi2s;

	/* Buffer to be used by DMA (I2S to Memory) */
	//uint16_t i2s_dma_buffer[DMA_BUF_LEN];
	/* Indicates which half of the i2s_dma_buffer the DMA is not writing to */
	uint16_t *buffer_ptr;
	uint16_t buffer_size;

	volatile uint8_t data_ready;
} ics43434_dev;

/******************************************************************************
Function Prototypes
******************************************************************************/

int ics43434_begin(ics43434_dev *dev, I2S_HandleTypeDef *hi2s, uint16_t *buffer, uint16_t size);

void ics43434_process_data(volatile ics43434_dev *mic_ptr);


#ifdef __cplusplus
}
#endif

#endif /* __ICS43434_H__ */
