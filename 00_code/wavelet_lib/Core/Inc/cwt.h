/**
 * @file       cwt.h
 * @author     Diogo Fernandes (diogo.cf20@gmail.com)
 * 
 * @brief      Files that contain functions regarding the application 
 *                  of the Continuous Wavelet Transform to signals
 * */
#ifndef _CWT_H_
#define _CWT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "complex.h"
#include "wavelet.h"

#include <stdint.h>

int cwt(complex *y_i, uint32_t N_i, float dt_i, float dj_i, float s0_i, uint32_t J_i, 
            wavelet_funcs mother_i, float param_i,
            complex *y_cwt_o, float *period_o, float *scale_o, float *coi_o);

#ifdef __cplusplus
}
#endif

#endif /* _CWT_H_ */
