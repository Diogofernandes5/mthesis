#include "utils.h"

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include "usart.h"

#define MAXCHAR 1000

/******************************************************************************
@brief	Converts string 'str' to int, verifying if its ASCII values are valid 
					(0-9 || A-F)
@param  String 'str' to be converted

@retval Int value of string converted
******************************************************************************/
int my_atoi(const char *str)
{
	uint8_t i = 0;

	while(str[i]) // end of array
	{
		if(((str[i] < 0x30) || (str[i] > 0x41)) && ((str[i] < 0x41) || (str[i] > 0x46))) // 0x30 ('0'); 0x41 ('9'); 0x41 ('A'); 0x46 ('F');
			return -1;		// invalid
		i++;
	}
	return (int)strtol(str, NULL, 16); // convert string str (representing a hexadecimal value) into an integer number - 16 (hexadecimal)
}

/**
 * @brief   Extract values from file separated by delim
 * 
 * @param   buff - buffer with separeted tokens
 * @param 	filename - file name
 * @param 	filepath - path to file with filename and extension in the end
 * @param 	delim - delimiter from different values
 * 
 * @retval	Success if opened file (0)
 * 				NSuccess if not opened file (-1)
 * */
int extract_values_file(double *buff, char *filename, char *filepath, char *delim)
{
	char row[MAXCHAR];
	char *token;

	// open file
  	FILE *fp = fopen(filepath, "r");
  	if (fp == NULL)
  	{
    	printf("Error: could not open file %s", filename);
      	return -1;
  	}

  	// get first line 
  	while (fgets(row, MAXCHAR, fp) != EOF)
    {
    	// retrieve first tokens
        token = strtok(row, delim);

        while(token != NULL)
        {
        	// write to buffer
            *buff = atof(token);
        	buff++;
            
            // retrieve the next tokens 
            token = strtok(NULL, delim);
        }
    }
    return 0;
}

int write_to_file(complex* vector, int size, char *filepath, char *filename)
{
	char str[16] = {0};
	int i = 0;
	FILE *fp = fopen(filepath, "w");
	if (fp == NULL)
  	{
    	UART_puts("Error: could not open file!\n\r");
      	return -1;
  	}

  	while(i < size)
  	{
  		memset(str, '0', 16);
  		sprintf(str, "%2.4f %2.4fi,", vector[i].Re, vector[i].Im);
  		fputs(str, fp);
  		i++;
  	}

  	return 0;
}