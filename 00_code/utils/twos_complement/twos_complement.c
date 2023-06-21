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

// int ones_complement(uint16_t value, int bits)
// {
//     char one* = (char *)calloc(bits + 1, sizeof(char));

//     for(i = 0; i < SIZE; i++)
//     {
//        if(num[i] == '0')
//           one[i] = '1';

//        else if(num[i] == '1')
//           one[i] = '0';
//     }
//     one[SIZE] = '\0';
// }

// int twos_complement(uint16_t value, int bits)
// {

//     int val = (int) value;


//     return val;
// }

void printBits(void const * const ptr, size_t const size)
{
    unsigned char *b = (unsigned char*) ptr;
    unsigned char byte;
    int i, j;
    
    for (i = size-1; i >= 0; i--) {
        for (j = 7; j >= 0; j--) {
            byte = (b[i] >> j) & 1;
            printf("%u", byte);
        }
    }
    puts("");
}

int main(int argc, char* argv[])
{
    uint16_t val = 0b1010;

    int comp = twos_complement(val, 16);

    printf("2C [0x%X] = 0x%X \n\r", val, comp);
    // printBits(&comp, sizeof(comp));

    return 0;
}

