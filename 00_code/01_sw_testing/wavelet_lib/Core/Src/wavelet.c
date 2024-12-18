/**
 * @file   	wavelet.c
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#include "wavelet.h"

int (*wave_bases[1])(float *wk_i, uint32_t N_i, float scale_i, float param_i, 
    float *daughter_o, float *fourier_factor_o, float *coi_o, uint8_t *dof_min_o)
    = {morlet_base}; //, null, null}; // morlet, paul, DOG