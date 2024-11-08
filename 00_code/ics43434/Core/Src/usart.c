/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    usart.c
  * @brief   This file provides code for the configuration
  *          of the USART instances.
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
#include "usart.h"

/* USER CODE BEGIN 0 */
char Rx_Buffer[RX_BUFF_LEN];
char Tx_Buffer[TX_BUFF_LEN];
volatile uint8_t Rx_index = 0;
//uint16_t Tx_index = 0;

//volatile uint8_t Tx_flag = 0;
volatile uint8_t Rx_flag = 0;
volatile uint8_t cmd_received = 0;

volatile uint8_t c; // received char

/******************************************************************************
Function prototypes
******************************************************************************/

static void clear_last_cmd(void);
static void insert_cmd(const char* str);

static void process_as_data(void);
static char process_as_control(void);

static void enter_key_cb(void);
static void bcksp_key_cb(void);
static void esc_key_cb(void);
static void dollar_key_cb(void);

//static void left_key_cb(void);
//static void up_key_cb(void);
//static void right_key_cb(void);
//static void down_key_cb(void);

/* USER CODE END 0 */

UART_HandleTypeDef huart3;
DMA_HandleTypeDef hdma_usart3_tx;

/* USART3 init function */

void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 115200;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  huart3.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart3.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};
  if(uartHandle->Instance==USART3)
  {
  /* USER CODE BEGIN USART3_MspInit 0 */

  /* USER CODE END USART3_MspInit 0 */

  /** Initializes the peripherals clock
  */
    PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_USART3;
    PeriphClkInitStruct.Usart3ClockSelection = RCC_USART3CLKSOURCE_PCLK1;
    if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
    {
      Error_Handler();
    }

    /* USART3 clock enable */
    __HAL_RCC_USART3_CLK_ENABLE();

    __HAL_RCC_GPIOD_CLK_ENABLE();
    /**USART3 GPIO Configuration
    PD8     ------> USART3_TX
    PD9     ------> USART3_RX
    */
    GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF7_USART3;
    HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

    /* USART3 DMA Init */
    /* USART3_TX Init */
    hdma_usart3_tx.Instance = DMA1_Stream3;
    hdma_usart3_tx.Init.Channel = DMA_CHANNEL_4;
    hdma_usart3_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_usart3_tx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_usart3_tx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_usart3_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_usart3_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_usart3_tx.Init.Mode = DMA_NORMAL;
    hdma_usart3_tx.Init.Priority = DMA_PRIORITY_LOW;
    hdma_usart3_tx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    if (HAL_DMA_Init(&hdma_usart3_tx) != HAL_OK)
    {
      Error_Handler();
    }

    __HAL_LINKDMA(uartHandle,hdmatx,hdma_usart3_tx);

    /* USART3 interrupt Init */
    HAL_NVIC_SetPriority(USART3_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(USART3_IRQn);
  /* USER CODE BEGIN USART3_MspInit 1 */

  /* USER CODE END USART3_MspInit 1 */
  }
}

void HAL_UART_MspDeInit(UART_HandleTypeDef* uartHandle)
{

  if(uartHandle->Instance==USART3)
  {
  /* USER CODE BEGIN USART3_MspDeInit 0 */

  /* USER CODE END USART3_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_USART3_CLK_DISABLE();

    /**USART3 GPIO Configuration
    PD8     ------> USART3_TX
    PD9     ------> USART3_RX
    */
    HAL_GPIO_DeInit(GPIOD, GPIO_PIN_8|GPIO_PIN_9);

    /* USART3 DMA DeInit */
    HAL_DMA_DeInit(uartHandle->hdmatx);

    /* USART3 interrupt Deinit */
    HAL_NVIC_DisableIRQ(USART3_IRQn);
  /* USER CODE BEGIN USART3_MspDeInit 1 */

  /* USER CODE END USART3_MspDeInit 1 */
  }
}

/* USER CODE BEGIN 1 */

/******************************************************************************
@brief	 	 Receives a char by UART serial port
******************************************************************************/
char UART_Receive(void)
{
	if(Rx_index == (RX_BUFF_LEN - 1)) // Is the buffer full?
		// Treat as 'CR'
		c = ENTER_KEY;
	
	if(c != ENTER_KEY) // Is this the end of reception?
		Rx_UART_init(); // prepare for next character
	
	if(process_as_control() == 0) // Is the received char a control char?
		return (char)(-1);
	
	// Its not a special character
	process_as_data();
	return c;
}

/******************************************************************************
@param  	 char received 'c' via UART

@brief	 	 process the char received as a special character
******************************************************************************/

typedef struct Special_Key {
	const uint8_t code;
	void (*fn)(void);
} Special_Key_t;

// List of special keys codes and callbacks
const Special_Key_t s_key_list[] = 
{
	{ENTER_KEY	, enter_key_cb	},
	{BCKSP_KEY	, bcksp_key_cb	},
	{ESC_KEY		, esc_key_cb		},
	{DOLLAR_KEY	, dollar_key_cb	},
//	{LEFT_ARROW_KEY	, left_key_cb},
//	{UP_ARROW_KEY		, dollar_key_cb},
//	{RIGHT_ARROW_KEY, right_key_cb},
//	{DOWN_ARROW_KEY	, down_key_cb},
	
	{0,0}
};

static char process_as_control(void)
{
	const Special_Key_t *s_key_ptr = s_key_list;
	
	while(s_key_ptr->code)
	{
		if(c == (s_key_ptr->code))// Is this a control char?
		{
			// Execute this control char callback
			s_key_ptr->fn();	
			return 0; // processed as control
		}
		s_key_ptr++;
	}

	// Its not a control char. Needs to be processed as data
	return (char)(-1);
}

static void enter_key_cb(void)
{
	UART_puts("\n\r");
	Rx_Buffer[Rx_index] = 0;	// mark end of string
	Rx_index = 0;
	cmd_received = 1;					// informs main a command was received
}

static void bcksp_key_cb(void)
{
	if(Rx_index > 0) // Is there characters left to delete?
		Rx_index--;
		// c is equal to BCKSP_KEY
	else
		// Nothing to delete
		c = 0; // Print nothing
	UART_putchar(c);
}

static void esc_key_cb(void)
{
	clear_last_cmd();
}

static void dollar_key_cb(void)
{
	clear_last_cmd();
	UART_puts(last_valid_cmd); // print last valid command
	insert_cmd(last_valid_cmd); // fill Rx_Buffer with last valid command
}

//static void left_key_cb(void)
//{
//
//}
//
//static void up_key_cb(void)
//{
//
//}
//
//static void right_key_cb(void)
//{
//
//}
//
//static void down_key_cb(void)
//{
//
//}

/******************************************************************************
@param  	 char received 'c' via UART

@brief	 	 process the char received as a data character
******************************************************************************/

static void process_as_data(void)
{
	// add received char to Rx_Buffer
	Rx_Buffer[Rx_index] = c;
	Rx_index++;
}

/******************************************************************************
@brief	 	 send backspaces via terminal to clear the command line
******************************************************************************/
static void clear_last_cmd(void)
{
	if(Rx_index == 0) // empty buffer
		return;
	
	// fill Rx_Buffer with 'BCKSP_KEY'
	memset(Rx_Buffer, BCKSP_KEY, Rx_index);
	Rx_Buffer[Rx_index] = 0; 	// mark end of string
	Rx_index = 0;
	
	UART_puts(Rx_Buffer); // print it -> this will clear the command line 
}

/******************************************************************************
@brief	 	 Assigns 'Rx_Buffer' with string 'str', making 'Rx_index' point to
							the end of 'Rx_Buffer'
@param  	 String to be inserted in 'Rx_Buffer'
******************************************************************************/
static void insert_cmd(const char* str)
{
	if((str == NULL) || (str[0] == 0))
		return;
	
	int len = strlen(str);
	if(len > RX_BUFF_LEN)
		return;
	
	strcpy(Rx_Buffer, str);
	Rx_index = strlen(str);	// 'Rx_index' point to the last 'Rx_Buffer' position
}

// set the interrupt for UART3 Rx
void Rx_UART_init(void)
{
	HAL_UART_Receive_IT(&huart3, (uint8_t*)&c, 1);
}

//implementation of UART ISR
void HAL_UART_RxCpltCallback(UART_HandleTypeDef* huart)
{
	if (huart->Instance == USART3) //current UART?
		Rx_flag = 1;
}

//implementation of UART ISR
/*void HAL_UART_TxCpltCallback(UART_HandleTypeDef* huart)
{
	if (huart->Instance == USART3) //current UART?
		Tx_flag = 1;
}*/

/******************************************************************************
@brief	 	 Sends a char by UART - Interrupt but waits for UART 
							to be in READY state
@param  	 Char to be transmitted
******************************************************************************/
void UART_putchar(char ch)
{
	while(huart3.gState == HAL_UART_STATE_BUSY_TX) // Waits for UART_Tx to transmitt queued data
		;
	
	c = ch; // 'ch' cannot be used to transmitt since its local to this function. Content may be lost
	HAL_UART_Transmit_DMA(&huart3, (uint8_t*)&c, 1);
}

/******************************************************************************
@brief	 	 Sends a string by UART - Interrupt but waits for UART 
							to be in READY state
@param  	 String to be transmitted
******************************************************************************/
void UART_puts(const char *s)
{
	if((s == NULL) || (s[0] == 0))	// string empty?
		return;

	int len = strlen(s);
	if(len > TX_BUFF_LEN)		// string size bigger than the max size of Tx_Buffer?
		return;

	while(huart3.gState == HAL_UART_STATE_BUSY_TX) // Waits for UART_Tx to transmitt queued data
		;

	strcpy(Tx_Buffer, s);	// send string 'str' to 'TX_Buffer'
	HAL_UART_Transmit_DMA(&huart3, (uint8_t*)Tx_Buffer, len);
}

/*void customStrncat(char* dest, const char* src, size_t n) {
   size_t dest_len = strlen(dest);
   size_t i;

   for (i = 0; i < n && src[i] != '\0'; i++) {
       dest[dest_len + i] = src[i];
   }

   // Null-terminate the result
   dest[dest_len + i] = '\0';
}

void UART_puts(const char *s)
{
	if((s == NULL) || (s[0] == 0))	// string empty?
		return;
	
	uint16_t len = strlen(s);
	if(len > TX_BUFF_LEN)		// string size bigger than the max size of Tx_Buffer?
		return;

	// strcpy(Tx_Buffer, s);	// send string 'str' to 'TX_Buffer'
	customStrncat(Tx_Buffer + Tx_index, s, len);

	Tx_index += len;

	Tx_index = Tx_index & (TX_BUFF_LEN-1);
	//HAL_UART_Transmit_DMA(&huart3, (uint8_t*)Tx_Buffer, len);
	HAL_UART_Transmit_DMA(&huart3, (uint8_t*)Tx_Buffer + Tx_index, len);
}*/

//void UART_puts(const char *s)
//{
//	const char *ptr = s;
//	
//	if((s == NULL) || (s[0] == 0))
//		return;
//	
//	while (*ptr)
//	{
//		UART_putchar(*ptr);
//		ptr++;
//	}
//}

/* USER CODE END 1 */
