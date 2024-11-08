#include<stdio.h>
#include<stdint.h>


int main(int argc, char* argv[])
{
    int16_t byte_1 = 0x1234;
    int16_t byte_2 = 0x5600;
    int shifted_val = 0;

    shifted_val = (int32_t)((uint32_t)byte_1 << 8) | (byte_2 >> 8); 

    printf("shifted_val: [0x%X + 0x%X] = 0x%X \n\r", byte_1, byte_2, shifted_val);

    return 0;
}

