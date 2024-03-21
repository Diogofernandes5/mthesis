/**
 * @file   	complex.c
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#include "complex.h"
#include <stdio.h>
#include <stdint.h>
#include "usart.h"

/******************************************************************************
Defines and macros
******************************************************************************/



/******************************************************************************
Function Prototypes
******************************************************************************/



/******************************************************************************
Function Definitions
******************************************************************************/

void print_complex_vector(complex *x, uint16_t n, uint16_t j)
{
  for(uint16_t i = 0; i < j; i++)
  {
    for(uint16_t k = 0; k < n; k++)
    {
      char str[50];
      sprintf(str, "x[%d] %2.4f,%2.4fj ", (i*n) + k, x[(i*n) + k].Re, x[(i*n) + k].Im);
      UART_puts(str);      
    }
    UART_puts("\n\r");
  } 
  UART_puts("\n\r");
}