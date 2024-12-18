/**
 * @file   	morlet.h
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * 
 * @brief	File that contain functions regarding the morlet wavelet 
 * */

#ifndef _MORLET_H_
#define _MORLET_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

int morlet_base (float *wk_i, uint32_t N_i, float scale_i, float param_i, 
    float *daughter_o, float *fourier_factor_o, float *coi_o, uint8_t *dof_min_o);


#ifdef __cplusplus
}
#endif

#endif /* _MORLET_H_ */