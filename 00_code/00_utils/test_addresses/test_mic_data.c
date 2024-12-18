#include<stdio.h>
#include<stdint.h>


int main(int argc, char* argv[])
{
    /**
     * Code to test the combination of the 2 half-word read from the I2S microphone
     * 
     * The 24-bit array comes separated in 2 half-word data like:
     * 
     * 0x8EAA33 = 0x8EAA | 0x3300
     * */
    int32_t sample_left = 0;
    int32_t sample_right = 0;

    uint16_t i2s_dma_buffer[8] = {0x1234,0x5600,0x5678,0x9a00,0xfedc,0xba00,0x9876,0x5400};
    uint16_t *buffer_ptr = i2s_dma_buffer;

    uint32_t aux_left = 0;
    uint32_t aux_right = 0;

    char str[24];

    printf("Test combination of the 2 half-word read from the I2S microphone.\n\r");

    for (int i = 0; i < 8; i += 4)
    {
        aux_left = (uint32_t) ((*(buffer_ptr)) << 8) | ((*(buffer_ptr+1))  >> 8);
        aux_right = (uint32_t) ((*(buffer_ptr+2)) << 8) | ((*(buffer_ptr+3)) >> 8);

        sprintf(str, "%X \t %X\n\r", aux_left, aux_right);
        printf("%s",str);

        // sample_left = (aux_left << 8) >> 8;
        // sample_right = (aux_right << 8) >> 8;

        sample_left = (aux_left ^ 0x800000) - 0x800000;
        sample_right = (aux_right ^ 0x800000) - 0x800000;

        sprintf(str, "%X \t %X\n\r", sample_left, sample_right);
        printf("%s",str);

        buffer_ptr += 4;
    }

    printf("\n\r");

    /*----------------------------------------------------------*/

    /**
     * Code to test the incrementation of pointers to different size data:
     *  uint32_t & uint16_t & uint8_t
     **/
    printf("Test the incrementation of pointers to different size data.\n\r");

    int int_vals[4] = {1,2,3,4};    
    int16_t hword_vals[4] = {1,2,3,4};
    int8_t char_vals[4] = {1,2,3,4};

    int *int_ptr;
    int16_t *hword_ptr;
    int8_t *char_ptr;

    int_ptr = int_vals;
    hword_ptr = hword_vals;
    char_ptr = char_vals;

    printf("[%p] = 0x%X \t [%p] = 0x%X \t [%p] = 0x%X\n\r", int_ptr, *int_ptr, hword_ptr, *hword_ptr, char_ptr, *char_ptr);

    int_ptr += 1;
    hword_ptr += 1;
    char_ptr += 1;

    printf("[%p] = 0x%X \t [%p] = 0x%X \t [%p] = 0x%X\n\r", int_ptr, *int_ptr, hword_ptr, *hword_ptr, char_ptr, *char_ptr);

    int_ptr += 2;
    hword_ptr += 2;
    char_ptr += 2;

    printf("[%p] = 0x%X \t [%p] = 0x%X \t [%p] = 0x%X\n\r", int_ptr, *int_ptr, hword_ptr, *hword_ptr, char_ptr, *char_ptr);

    return 0;
}