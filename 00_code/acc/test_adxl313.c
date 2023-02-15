#include<stdio.h>
#include<stdlib.h>

#include"adxl313/adxl313.h"


int main(int argc, char* argv[])
{
	int ret;

	// declare device
	struct adxl313_dev 			*adxl;
	struct adxl313_init_param 	init_param;

	init_param.comm_type = ADXL313_SPI_COMM;
	init_param.dev_type = ID_ADXL313;

	ret = adxl313_init(&adxl, init_param);
	if(ret != 0)
		return -1;

	printf("Device successfully initialized.\n");
	
	return 0;
}