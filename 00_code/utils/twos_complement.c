#include<stdio.h>
#include<stdint.h>

int twos_complement(uint16_t value, int bits){

    int val = 0;
    val = (int) value;
    if (val & (1 << (bits-1))){
        val -= 1 << bits;
    }
    return val;
}

int main(int argc, char* argv[])
{
    uint16_t val = 0xFF;

    uint16_t comp = twos_complement(val, 16);

    printf("2C [0x%X] = 0x%X\n", val, comp);

    return 0;
}

