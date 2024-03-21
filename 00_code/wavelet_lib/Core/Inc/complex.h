/**
 * @file   	complex.h
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#ifndef _COMPLEX_H_
#define _COMPLEX_H_

#ifdef __cplusplus
extern "C" {
#endif

/******************************************************************************
Defines and macros
******************************************************************************/

#define complex_mul_re(a_re, a_im, b_re, b_im)  (a_re * b_re - a_im * b_im)
#define complex_mul_im(a_re, a_im, b_re, b_im)  (a_re * b_im + a_im * b_re)

/******************************************************************************
Data structures
******************************************************************************/

typedef struct
{ 
	double Re; 
	double Im;
} complex;

/******************************************************************************
Function Prototypes
******************************************************************************/
extern void print_complex_vector(complex *x, unsigned short int n, unsigned short int j);

#ifdef __cplusplus
}
#endif

#endif /* _COMPLEX_H_ */