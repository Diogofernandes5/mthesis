#include "fft.h"

#include "errdef.h"
#include "utils.h"

#include <math.h> // -lm flag needed

/**
 * @brief   Applies fft over an time-series array
 *                  Will be executed recursively through the stages 
 *                      The number of stages are equal to --------------------------------------
 * 
 * @param   y_io - time-series array, returns by reference 
 *                                      in the frequency domain
 * @param   N_i - length of the array
 * @param   aux_i - auxiliary array with the same size of y_io
 *                                      used to point to the odd and even arrays
 * 
 * @retval  success
 * */
uint8_t fft(complex *y_io, uint32_t N_i, complex *aux_i)
{
    if(N_i > 1)     /* not last stage? */
    {
        complex z, w;
        uint32_t half_N_i = (N_i >> 1);         /* N_i/2 */

        complex *ve = aux_i;                    /* even array points to first position */ 
        complex *vo = aux_i + half_N_i;         /* odd  array points to middle position */

        for(int k = 0; k < half_N_i; k++) 
        {
            /* ve[k] = y_io[k * 2]; */
            ve[k] = y_io[k << 1];
            vo[k] = y_io[(k << 1) + 1];
        }

        fft(ve, half_N_i, y_io);        /* FFT on even-indexed elements of y_io[] */
        fft(vo, half_N_i, y_io);        /* FFT on odd-indexed elements of y_io[] */

        /* apply twiddle factor of this stage and 2-pt DFT*/
        for(int m = 0; m < half_N_i; m++) 
        {
            /* Twiddle factor:
                w = exp(-2i*PI*m/N_i):
                    Re(e^-ix) = cos(x)
                    Im(e^-ix) = -sen(x) */
            w.Re =  cos((2 * PI * m) / (double)N_i);
            w.Im = -sin((2 * PI * m) / (double)N_i);

            /* w * vo[m] */
            z.Re = complex_mul_re(w.Re, w.Im, vo[m].Re, vo[m].Im);   /* Re(w*vo[m]) */
            z.Im = complex_mul_im(w.Re, w.Im, vo[m].Re, vo[m].Im);   /* Im(w*vo[m]) */

            /* out1 = ve + w(m)*vo */ 
            y_io[m].Re = ve[m].Re + z.Re;
            y_io[m].Im = ve[m].Im + z.Im;

            /* out2 = ve - w(m+(N_i/2))*vo */ 
            y_io[m + half_N_i].Re = ve[m].Re - z.Re;
            y_io[m + half_N_i].Im = ve[m].Im - z.Im;
        }
    }
    
    return _EXIT_SUCCESS;
}

/**
 * @brief   Applies ifft over an frequency-series array
 *                  Will be executed recursively through the stages 
 *                      The number of stages are equal to --------------------------------------
 * 
 * @param   y_io - frequency-series array, returns by reference 
 *                                      in the time domain
 * @param   N_i - length of the array
 * @param   aux_i - auxiliary array with the same size of y_io
 *                                      used to point to the odd and even arrays
 * 
 * @retval  success
 * */
uint8_t ifft(complex *y_io, uint32_t N_i, complex *aux_i)
{
    /* not last stage? */
    if(N_i > 1)
    {
        complex z, w;
        uint32_t half_N_i = (N_i >> 1);         /* N_i/2 */

        complex *ve = aux_i;                    /* even array points to first position */ 
        complex *vo = aux_i + half_N_i;         /* odd  array points to middle position */

        for(int k = 0; k < half_N_i; k++) 
        {
            /* ve[k] = y_io[k * 2]; */
            ve[k].Re = y_io[k << 1].Re / 2;
            ve[k].Im = y_io[k << 1].Im / 2;

            vo[k].Re = y_io[(k << 1) + 1].Re / 2;
            vo[k].Im = y_io[(k << 1) + 1].Im / 2;  
        }

        ifft(ve, half_N_i, y_io);        /* FFT on even-indexed elements of y_io[] */
        ifft(vo, half_N_i, y_io);        /* FFT on odd-indexed elements of y_io[] */

        /* apply twiddle factor of this stage and 2-pt DFT*/
        for(int m = 0; m < half_N_i; m++) 
        {
            w.Re = cos((2 * PI * m) / (double)N_i);
            w.Im = sin((2 * PI * m) / (double)N_i);

            /* w * vo[m] */
            z.Re = complex_mul_re(w.Re, w.Im, vo[m].Re, vo[m].Im);   /* Re(w*vo[m]) */
            z.Im = complex_mul_im(w.Re, w.Im, vo[m].Re, vo[m].Im);   /* Im(w*vo[m]) */

            /* out1 = ve + w(m)*vo */ 
            y_io[m].Re = ve[m].Re + z.Re;
            y_io[m].Im = ve[m].Im + z.Im;

            /* out2 = ve - w(m+(N_i/2))*vo */ 
            y_io[m + half_N_i].Re = ve[m].Re - z.Re;
            y_io[m + half_N_i].Im = ve[m].Im - z.Im;
        }
    }

    return _EXIT_SUCCESS;
}