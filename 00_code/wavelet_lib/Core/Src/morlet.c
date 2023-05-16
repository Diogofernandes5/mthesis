#include "morlet.h"

#include "errdef.h"
#include "usart.h"

#include <math.h>
#include <stdlib.h>

/**
 * @brief   Create scaled morlet wavelet in the frequency domain (after FFT)
 * 
 * @param   wk_i - wavenumber array at which to calculate the wavelet [Eqn(5)]
 * @param   scale_i - the wavelet scale
 * @param   param_i - nondimensional parameter for the wavelet function
 * 
 * @param   daughter_o - the wavelet function
 * @param   fourier_factor_o - the ratio of Fourier period to scale
 * @param   coi_o - cone-of-influence size at the scale
 * @param   dof_min_o - degrees of freedom for each point in the wavelet power
 *              (2 for Morlet)
 * 
 * @retval  Success
 * */
int morlet_base (float *wk_i, uint32_t N_i, float scale_i, float param_i, 
    float *daughter_o, float *fourier_factor_o, float *coi_o, uint8_t *dof_min_o)
{
	float wk0 = (param_i == -1) ? 6.0 : param_i;
	uint16_t half_N_i = N_i >> 1;

	float *expnt = (float*) calloc(N_i, sizeof(float));

	if(expnt == NULL) /* Allocation error */ 
    {
        UART_puts("It was not possible to allocate 'expnt' pointer!\n\r");
        return -ENOMEM;
    }
	memset(expnt, N_i, 0.0);
	
	float norm = sqrt(scale_i * wk_i[1] * N_i) * pow(M_PI, -0.25);

	for (uint32_t k = 0; k < half_N_i + 1; k++)
	{
		expnt[k] = - pow(((scale_i * wk_i[k]) - wk0), 2.0) / 2;
		daughter_o[k] = norm * exp(expnt[k]); 
	}

	// for (uint32_t k = half_N_i; k < N_i; k++)
	// 	daughter_o[k] = norm * exp(expnt[k]); 

	free(expnt);
	
	*fourier_factor_o = (4 * M_PI) / (wk0 + sqrt(2 + pow(wk0, 2)));
	*coi_o = *fourier_factor_o / sqrt(2);
	*dof_min_o = 2;
 	
 	return _EXIT_SUCCESS;
}