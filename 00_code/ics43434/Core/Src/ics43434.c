/**
 * @file   	ics43434.c
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#include "ics43434.h"
#include "usart.h"

/******************************************************************************
Defines and macros
******************************************************************************/

/******************************************************************************
Function Prototypes
******************************************************************************/

int ics43434_start_reading(ics43434_dev *dev, uint16_t size);


/******************************************************************************
Function Definitions
******************************************************************************/

int ics43434_begin(ics43434_dev *dev, I2S_HandleTypeDef *hi2s, uint16_t *buffer, uint16_t size)
{
    dev->hi2s = hi2s;

    /* Buffer pointer points to the beginning of data array */
    dev->buffer_ptr = buffer;

    dev->buffer_size = size;

    dev->data_ready = 0;

    return ics43434_start_reading(dev, size);
}

int ics43434_start_reading(ics43434_dev *dev, uint16_t size)
{
    return HAL_I2S_Receive_DMA(dev->hi2s, (uint16_t*)dev->buffer_ptr, size);

    // do
    // {
    //     hal_status = HAL_I2S_Receive_DMA(mic_dev.hi2s, mic_dev.i2s_dma_buffer, DMA_BUF_LEN);
    // } while(hal_status != HAL_OK);
}

void ics43434_process_data(volatile ics43434_dev *mic_ptr)
{
	static char str[16];
	static int i;

	static int32_t sample_left = 0;
	static int32_t sample_right = 0;

	static uint32_t aux_left = 0;
	static uint32_t aux_right = 0;

	for (i = 0; i < (mic_ptr->buffer_size/2); i += 4)
	{
		aux_left = (uint32_t) ((*(mic_ptr->buffer_ptr)) << 8) | ((*(mic_ptr->buffer_ptr+1))  >> 8);
		aux_right = (uint32_t) ((*(mic_ptr->buffer_ptr+2)) << 8) | ((*(mic_ptr->buffer_ptr+3)) >> 8);

		sample_left = (aux_left ^ 0x800000) - 0x800000;
	    sample_right = (aux_right ^ 0x800000) - 0x800000;

		sprintf(str, "%li \t %li\n\r", sample_left, sample_right);

		//sprintf(str, "%X\n\r%X\n\r", sample_left, sample_right);
		UART_puts(str);

		mic_ptr->buffer_ptr += 4;
	}
}
