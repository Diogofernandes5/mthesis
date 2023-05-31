/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    spi.c
  * @brief   This file provides code for the configuration
  *          of the SPI instances.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "spi.h"

/* USER CODE BEGIN 0 */
#include "utils.h"

/* USER CODE END 0 */

SPI_HandleTypeDef hspi4;

/* SPI4 init function */
void MX_SPI4_Init(void)
{

  /* USER CODE BEGIN SPI4_Init 0 */

  /* USER CODE END SPI4_Init 0 */

  /* USER CODE BEGIN SPI4_Init 1 */

  /* USER CODE END SPI4_Init 1 */
  hspi4.Instance = SPI4;
  hspi4.Init.Mode = SPI_MODE_MASTER;
  hspi4.Init.Direction = SPI_DIRECTION_2LINES;
  hspi4.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi4.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi4.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi4.Init.NSS = SPI_NSS_SOFT;
  hspi4.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_64;
  hspi4.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi4.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi4.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi4.Init.CRCPolynomial = 7;
  hspi4.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi4.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
  if (HAL_SPI_Init(&hspi4) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI4_Init 2 */

  /* USER CODE END SPI4_Init 2 */

}

void HAL_SPI_MspInit(SPI_HandleTypeDef* spiHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(spiHandle->Instance==SPI4)
  {
  /* USER CODE BEGIN SPI4_MspInit 0 */

  /* USER CODE END SPI4_MspInit 0 */
    /* SPI4 clock enable */
    __HAL_RCC_SPI4_CLK_ENABLE();

    __HAL_RCC_GPIOE_CLK_ENABLE();
    /**SPI4 GPIO Configuration
    PE2     ------> SPI4_SCK
    PE5     ------> SPI4_MISO
    PE6     ------> SPI4_MOSI
    */
    GPIO_InitStruct.Pin = GPIO_PIN_2|GPIO_PIN_5|GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF5_SPI4;
    HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /* USER CODE BEGIN SPI4_MspInit 1 */

  /* USER CODE END SPI4_MspInit 1 */
  }
}

void HAL_SPI_MspDeInit(SPI_HandleTypeDef* spiHandle)
{

  if(spiHandle->Instance==SPI4)
  {
  /* USER CODE BEGIN SPI4_MspDeInit 0 */

  /* USER CODE END SPI4_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_SPI4_CLK_DISABLE();

    /**SPI4 GPIO Configuration
    PE2     ------> SPI4_SCK
    PE5     ------> SPI4_MISO
    PE6     ------> SPI4_MOSI
    */
    HAL_GPIO_DeInit(GPIOE, GPIO_PIN_2|GPIO_PIN_5|GPIO_PIN_6);

  /* USER CODE BEGIN SPI4_MspDeInit 1 */

  /* USER CODE END SPI4_MspDeInit 1 */
  }
}

/* USER CODE BEGIN 1 */

/* SPI4 communication descriptor */
spi_comm_desc spi4_comm_desc = {  &hspi4,
                                  SPI4_CS_GPIO_Port,
                                  SPI4_CS_Pin };
                                  
/**
 * @brief   Write using SPI interface
 * 
 * @param   hspi_desc - spi comm descriptor
 * @param   __reg_address - register address of the device
 * @param   __val - value to write 
 * @param   __size - size of __val
 * */
void spi_write(spi_comm_desc *hspi_desc, uint8_t __reg_address, uint8_t __val, uint8_t __size) 
{
  // write single byte
  // uint8_t tx_buff[2] = {__reg_address, __val};

  /* CS low */
  HAL_GPIO_WritePin(hspi_desc->CS_port, hspi_desc->CS_pin, (GPIO_PinState)GPIO_PIN_RESET);
  
  // HAL_SPI_Transmit(hspi_desc->hspi, tx_buff, 2, 10);
  HAL_SPI_Transmit(hspi_desc->hspi, &__reg_address, 1, 100);

  HAL_SPI_Transmit(hspi_desc->hspi, &__val, 1, 100);

  /* CS high */
  HAL_GPIO_WritePin(hspi_desc->CS_port, hspi_desc->CS_pin, (GPIO_PinState)GPIO_PIN_SET);
}

/**
 * @brief   Read using SPI interface
 * 
 * @param   hspi_desc - spi comm descriptor
 * @param   __reg_address - register address of the device
 * @param   byte_num - number of bytes to read
 * @param   _buff - empty buffer to read
 * */
void spi_read(spi_comm_desc *hspi_desc, uint8_t __reg_address, int byte_num, uint8_t *_buff) 
{
  /* Read: Most Sig Bit of Reg Address Set */
  uint8_t _address = 0x80 | __reg_address;

  /* If Multi-Byte Read: Bit 6 Set */
  if(byte_num > 1) 
    _address |= 0x40;

  /* CS low */
  HAL_GPIO_WritePin(hspi_desc->CS_port, hspi_desc->CS_pin, (GPIO_PinState)GPIO_PIN_RESET);
  
  HAL_SPI_Transmit(hspi_desc->hspi, &_address, 1, 10);

  HAL_SPI_Receive(hspi_desc->hspi, _buff, byte_num, 10);

  /* CS high */
  HAL_GPIO_WritePin(hspi_desc->CS_port, hspi_desc->CS_pin, (GPIO_PinState)GPIO_PIN_SET);
}

/* USER CODE END 1 */
