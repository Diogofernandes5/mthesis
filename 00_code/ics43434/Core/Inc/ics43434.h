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
/* Length of the array - 4096 (for 16 bits) 2048 (for 32 bits - real)
	Array is half full when sensor has completed 1024 readings */
#define DMA_BUF_LEN   4096

/******************************************************************************
Data structures
******************************************************************************/

typedef struct __ics43434_dev
{
	/* Comunication handler */
	I2S_HandleTypeDef *hi2s;

	/* Buffer to be used by DMA (I2S to Memory) */
	uint16_t i2s_dma_buffer[DMA_BUF_LEN];
	/* Indicates which half of the i2s_dma_buffer the DMA is not writing to */
	uint16_t *buffer_pos_ptr;
} ics43434_dev;

/******************************************************************************
Function Prototypes
******************************************************************************/

int ics43434_begin(ics43434_dev *dev, I2S_HandleTypeDef *hi2s);


#ifdef __cplusplus
}
#endif

#endif /* __ICS43434_H__ */