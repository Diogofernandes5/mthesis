/**
 * @file   	utils.h
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#ifndef _UTILS_H_
#define _UTILS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <math.h> // -lm flag necessary

/******************************************************************************
Defines and Macros
******************************************************************************/

#define IS_ADDR16(__addr16__)           ((uint32_t)(__addr16__) < 0x10000) // Valid for [0 - 0xFFFF]
#define IS_ADDR8(__addr8__)                 ((uint16_t)(__addr8__) < 0x100) // Valid for [0 - 0xFF] 
#define IS_ADDR4(__addr4__)                 ((uint8_t)(__addr4__) < 0x10)   // Valid for [0 - 0x0F]

#define IS_BIT_SET(_byte_, _nbit_)  (((_byte_)>>(_nbit_)) & 0x01)
#define CLEARBIT(_byte_, _nbit_)        ((_byte_) &= ~(1<<(_nbit_)))
//#define setbit(x,n)   x|=(1<<n)
//#define togglebit(x,n)  x^=(1<<n)
//#define isbitclear(x,n) !((x>>n) & 0x1)

#define IS_PRINTABLE(__ch__)    (((__ch__) > 0x1F) && ((__ch__) < 0x7F)) // Is true if __ch__ is a printable character

#define IS_DIG(__dig__)                         (((uint8_t)(__dig__) > 0x00) && ((uint8_t)(__dig__) < 0x0A))    // Valid for [1 - 9]

//typedef enum comm_operation {write = 0, read};

/******************************************************************************
Function Prototypes
******************************************************************************/

int my_atoi(const char *str);

/******************************************************************************
Function Definition
******************************************************************************/

/**
 * @brief   Verifies if val is integer
 * 
 * @param   val -number to verify
 * 
 * @retval  yes (1) / no (0) 
 * */
static inline uint8_t isInteger(double val)
{
    int truncated = (int)val;
    return (val == truncated);
}

/**
 * @brief   Verifies if n is power of 2 number
 * 
 * @param   n - number to verify
 * 
 * @retval  yes (1) / no (0) 
 * */
static inline uint8_t is_powerof2(int n)
{
    double log_n = (log(n)/log(2));
    return isInteger(log_n);
}

#ifdef __cplusplus
}
#endif

#endif /* _UTILS_H_ */