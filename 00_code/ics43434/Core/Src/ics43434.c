/**
 * @file   	ics43434.c
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#include "ics43434.h"

/******************************************************************************
Defines and macros
******************************************************************************/



/******************************************************************************
Function Prototypes
******************************************************************************/

int ics43434_start_reading(ics43434_dev *dev);


/******************************************************************************
Function Definitions
******************************************************************************/

int ics43434_begin(ics43434_dev *dev, I2S_HandleTypeDef *hi2s)
{
    dev->hi2s = hi2s;
    /* Buffer pointer points to the begining of data array */
    dev->buffer_pos_ptr = dev->i2s_dma_buffer;

    return ics43434_start_reading(dev);
}

int ics43434_start_reading(ics43434_dev *dev)
{
    return HAL_I2S_Receive_DMA(dev->hi2s, dev->i2s_dma_buffer, DMA_BUF_LEN);

    // do
    // {
    //     hal_status = HAL_I2S_Receive_DMA(mic_dev.hi2s, mic_dev.i2s_dma_buffer, DMA_BUF_LEN);
    // } while(hal_status != HAL_OK);
}
