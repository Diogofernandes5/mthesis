/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gpio.c
  * @brief   This file provides code for the configuration
  *          of all used GPIO pins.
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
#include "gpio.h"

/* USER CODE BEGIN 0 */
//array of const (read-only) pointers to GPIO_TypeDef
GPIO_TypeDef* const GPIO_Ports[] = {GPIOA, GPIOB, GPIOC, GPIOD, GPIOE, GPIOF, GPIOG, GPIOH, GPIOI, GPIOJ, GPIOK};

const uint16_t GPIO_Pins[] = 
{
	GPIO_PIN_0, GPIO_PIN_1, GPIO_PIN_2, GPIO_PIN_3, 
	GPIO_PIN_4,	GPIO_PIN_5, GPIO_PIN_6, GPIO_PIN_7,
	GPIO_PIN_8, GPIO_PIN_9, GPIO_PIN_10, GPIO_PIN_11,
	GPIO_PIN_12, GPIO_PIN_13, GPIO_PIN_14, GPIO_PIN_15
};

/* USER CODE END 0 */

/*----------------------------------------------------------------------------*/
/* Configure GPIO                                                             */
/*----------------------------------------------------------------------------*/
/* USER CODE BEGIN 1 */

/* USER CODE END 1 */

/** Configure pins as
        * Analog
        * Input
        * Output
        * EVENT_OUT
        * EXTI
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(SPI4_CS_GPIO_Port, SPI4_CS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = SPI4_INT1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(SPI4_INT1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = SPI4_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(SPI4_CS_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI3_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI3_IRQn);

}

/* USER CODE BEGIN 2 */

void GPIO_config_pins(uint8_t port, uint32_t pin_setting, uint32_t GPIO_Mode)
{
	GPIO_InitTypeDef GPIO_Struct = {0};
	GPIO_Struct.Pin = pin_setting;
	GPIO_Struct.Mode = GPIO_Mode;
	GPIO_Struct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(GPIO_Ports[port], &GPIO_Struct);
}

char GPIO_check_res_pins(uint16_t port_addr, uint32_t *pin_setting)
{
	if(port_addr == 0)	//Port A
	{
		if(IS_BIT_SET(*pin_setting, 13) || IS_BIT_SET(*pin_setting, 14))		//PA13, PA14 - DEBUG
		{
			CLEARBIT(*pin_setting, 13);
			CLEARBIT(*pin_setting, 14);
			return (char)(-1);
		}
		if(IS_BIT_SET(*pin_setting, 0)) // PA0 - ADC1 IN0
		{
			CLEARBIT(*pin_setting, 0);
			return (char)(-1);
		}			
	}
	if(port_addr == 3) 	//Port D
	{
		if(IS_BIT_SET(*pin_setting, 8) || IS_BIT_SET(*pin_setting, 9))	//PD8, PD9 - UART
		{
			CLEARBIT(*pin_setting, 8);
			CLEARBIT(*pin_setting, 9);
			return (char)(-1);
		}
	}
	return 0;
}

/* USER CODE END 2 */
