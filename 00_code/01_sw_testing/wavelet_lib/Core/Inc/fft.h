/**
 * @file   	fft.h
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */
#ifndef _FFT_H_
#define _FFT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "complex.h"

#include <stdint.h>

uint8_t fft(complex *y_io, uint32_t N_i, complex *aux_i);
uint8_t ifft(complex *y_io, uint32_t N_i, complex *aux_i);

#ifdef __cplusplus
}
#endif

#endif /* _FFT_H_ */