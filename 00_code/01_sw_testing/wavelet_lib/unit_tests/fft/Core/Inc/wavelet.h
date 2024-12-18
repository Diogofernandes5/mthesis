/**
 * @file   	wavelet.h
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * 
 * @brief 	File that contains functions regarding the creation of 
 * 				scaled wavelets 
 * */

#ifndef _WAVELET_H_
#define _WAVELET_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "morlet.h"

typedef enum 
{
    MORLET = 0,
    PAUL,
    DOG
} wavelet_funcs;

/**
 * @brief   Create scaled wavelet in the frequency domain (after FFT)
 * 
 * @param   wk_i - wavenumber array at which to calculate the wavelet [Eqn(5)]
 * @param   scale_i - the wavelet scale
 * @param   param_i - nondimensional parameter for the wavelet function
 * 
 * @param   daughter_o - the wavelet function
 * @param   fourier_factor_o - the ratio of Fourier period to scale
 * @param   coi_o - cone-of-influence size at the scale
 * @param   dof_min_o - degrees of freedom for each point in the wavelet power
 *              (either 2 for Morlet and Paul, or 1 for the DOG)
 * 
 * @retval  Success
 * */
/*int (*wave_bases[1])(float *wk_i, uint32_t N_i, float scale_i, float param_i, 
    float *daughter_o, float *fourier_factor_o, float *coi_o, uint8_t *dof_min_o)
    = {morlet_base}; //, null, null}; // morlet, paul, DOG*/

#ifdef __cplusplus
}
#endif

#endif /* _WAVELET_H_ */
