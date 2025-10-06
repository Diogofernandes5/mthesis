/**
 * @file       utils.h
 * @author     Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#ifndef     __UTILS_H__
#define     __UTILS_H__

#include <stdlib.h>

/******************************************************************************
Defines and macros
******************************************************************************/


/******************************************************************************
Data structures
******************************************************************************/


/******************************************************************************
Function Prototypes
******************************************************************************/

void panic(char *msg);
#define panic(m)    {perror(m); abort();}

void write_sensor_data_to_file(const int *data_buf, const char *filepath, const int client_index, const int id, const int len);

void check_sequence(int *data, int *golden_vect, size_t size);

int *read_golden_file(const char *filename_re, const char *filename_im, int len);

#endif //__UTILS_H__