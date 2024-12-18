/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    i2s.h
  * @brief   This file contains all the function prototypes for
  *          the i2s.c file
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
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __I2S_H__
#define __I2S_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

extern I2S_HandleTypeDef hi2s2;

/* USER CODE BEGIN Private defines */

// typedef struct __i2s_comm_desc
// {
//   /* Communication handler */
//   I2S_HandleTypeDef* hi2s;

//   /* Clock pin */
//   GPIO_TypeDef* CK_port;
//   uint16_t CK_pin;

//   /* Word Select pin */
//   GPIO_TypeDef* WS_port;
//   uint16_t WS_pin;

//   /* Serial Data pin */
//   GPIO_TypeDef* SD_port;
//   uint16_t SD_pin;

// } i2s_comm_desc;

/* USER CODE END Private defines */

void MX_I2S2_Init(void);

/* USER CODE BEGIN Prototypes */

// extern void i2s_read(i2s_comm_desc *hi2s_desc, uint32_t *_buff);

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __I2S_H__ */

