#include "cwt.h"

#include "wavelet.h"
#include "fft.h" 
#include "utils.h" // is_powerof2

#include "usart.h"
#include "errdef.h"

#include <math.h>
#include <stdint.h>
#include <stdlib.h> // malloc

extern int (*wave_bases[1])(float *wk_i, uint32_t N_i, float scale_i, float param_i, 
        float *daughter_o, float *fourier_factor_o, float *coi_o, uint8_t *dof_min_o);
        // = {morlet_base}; //, null, null}; // morlet, paul, DOG

/**
 * @brief   Computes the wavelet transform of the vector y_i (length N_i),
 *              with sampling rate dt_i.
 * 
 * @param   y_i         - time series array to be computed (size N_i)
 * @param   N_i         - time series array length (must be a power of 2)
 * @param   dt_i        - sampling period
 * @param   dj_i        - spacing between scales 
 * @param   s0_i        - smallest scale of the wavelet
 * @param   J_i         - total number of scales (range = [s0_i, s0_i*2^(J_i*dj_i)])
 * @param   mother_i    - mother wavelet (morlet, paul, dog)
 * @param   param_i     - mother wavelet parameter
 * 
 * @param   y_cwt_o     - cwt applied in complex array with size (J_i x N_i)
 * @param   period_o    - array of Fourier periods (in time units) 
 *                            that corresponds to the scales
 * @param   scale_o     - array of scale indices, given by s0_i*2^(j*dj_i),
 *                            j = 0...J_i
 * @param   coi_o       - array of N_i points containing the max period of useful
 *                            information
 * 
 * @retval  Success
 * */
int cwt(complex *y_i, uint32_t N_i, uint32_t fs_i, uint8_t no_i, uint8_t vpo_i, float s0_i, 
            wavelet_funcs mother_i, float param_i,
            complex *y_cwt_o, float *period_o, float *scale_o, float coi_o[][2])
{
    uint8_t ret = 0;
    uint32_t k; /* iterator */
    uint32_t j;
    // uint8_t *dof_min = (uint8_t*) malloc(sizeof(uint8_t));
    uint8_t dof_min = 0;
    // float *fourier_factor = (float*) malloc(sizeof(float));
    float fourier_factor = 0.0;

    uint16_t J1 = no_i * vpo_i; // number of scales
    

	// verify power of 2 length
	if(!is_powerof2((float) N_i))
	{
		// or you can pad the array with zeros until the neareast greater power of 2
        // this will increase the frequency resolution 
		UART_puts("Time series array length must be a power of 2!\n\r");
		return _EXIT_FAILURE;
	}

    uint16_t half_N_i = (uint16_t) (N_i >> 1); /* half lenght of the time 
                                                    series array */
    
    /* Compute FFT of time series array - Equation 3 */
    complex *y_aux = (complex *) calloc(N_i, sizeof(complex)); /* auxliary empty array */
    if(y_aux == NULL)
    {
        UART_puts("It was not possible to allocate 'y_aux' pointer!\n\r");
        return -ENOMEM;
    }
    memset(y_aux, 0, N_i);

    ret = fft(y_i, N_i, y_aux);
    if(ret)
    {   // error
        UART_puts("It was not possible to compute the FFT of time series array!\n\r");
        return _EXIT_FAILURE;
    }

    /* Construct wavenumber array used in transform - Equation 5 */
    /* NOTE: in Torrence's paper this is done in another way
        where after half array, the wk is descending negatively */
    float *wk = (float*) calloc(N_i, sizeof(float));
    if(wk == NULL)
    {   // error
        UART_puts("It was not possible to allocate 'wk' pointer!\n\r");
        return -ENOMEM;
    }

    float multiplier_aux = (2 * M_PI * fs_i) / N_i;

    /* k <= N/2 */
    wk[0] = 0;
    for(k = 1; k < half_N_i + 1; k++)
    {
        wk[k] = multiplier_aux * k;
    }

    /* k > N/2 */
    for(k = 1; k < half_N_i; k++)
    {
        wk[N_i - k] = - multiplier_aux * k;
    //     wk[k] = multiplier_aux * (k - half_N_i + 1);
    }

    float *daughter = (float*) calloc(N_i, sizeof(float));
    if(daughter == NULL)
    {   // error
        UART_puts("It was not possible to allocate 'daughter' pointer!\n\r");
        return -ENOMEM;
    }

    /* Loop through scales */
    for(j = 0; j < J1; j++)
    {
        // for coi
        float e_folding_time = 0;
        float e_folding = 0;        // e-folding time constant relative to wavelet -

        //scale_o[j] = s0_i * pow(2, (j * dj_i));

        scale_o[j] = s0_i * pow(2, (double)j / vpo_i);

        ret = wave_bases[mother_i](wk, N_i, scale_o[j], param_i, 
            daughter, &fourier_factor, &e_folding, &dof_min);

        if(ret)
        {   // Error
            UART_puts("It was not possible to compute scales wavelet!\n\r");
            return _EXIT_FAILURE;
        }

        for(uint32_t i = 0; i < N_i; i++)
        {
            y_cwt_o[(j * N_i) + i].Re = complex_mul_re(y_i[i].Re, y_i[i].Im, daughter[i], 0);
            y_cwt_o[(j * N_i) + i].Im = complex_mul_im(y_i[i].Re, y_i[i].Im, daughter[i], 0);
        }

        ret = ifft(&y_cwt_o[j * N_i], N_i, y_aux);
        if(ret)
        {   // error
            UART_puts("It was not possible to compute the inverse fourier \
                transform of the tranformed signal!\n\r");
            return _EXIT_FAILURE;
        }

        period_o[j] = fourier_factor * scale_o[j];

        e_folding_time = e_folding * scale_o[j] * fs_i;
        coi_o[j][0] = min((uint16_t)half_N_i, e_folding_time); // left side of coi
        coi_o[j][1] = max((uint16_t)half_N_i + 0.5, N_i - e_folding_time); // right side of coi
    }

    /* Delete Dynamic memory*/
    free(y_aux);

    free(wk);
    free(daughter);

    return _EXIT_SUCCESS;
}

void print_coi(float coi[][2], int n)
{
  for(int i = 0; i < n; i++)
  {
    char str[24];
    sprintf(str, "%2.4f, %2.4f", coi[i][0], coi[i][1]);
    UART_puts(str);

    UART_puts("\n\r");  
  } 
  UART_puts("\n\r");
}