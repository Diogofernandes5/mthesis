#include <stdio.h>
#include <stdint.h>


// typedef enum num_operations {SINGLE = 0, MULTI};

int main(int argc, char *argv[])
{
	uint8_t _address = 0x80 | 0x00;

	printf("0x%X\n", _address);

	uint8_t num = (0 && 0xFE);
	printf("0x%X\n", num);

  	_address |= num << 6;

  	printf("0x%X\n", _address);

  	return 0;
}