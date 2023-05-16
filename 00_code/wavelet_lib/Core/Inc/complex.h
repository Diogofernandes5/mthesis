/**
 * @file   	complex.h
 * @author 	Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#ifndef _COMPLEX_H_
#define _COMPLEX_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{ 
	double Re; 
	double Im;
} complex;

#define complex_mul_re(a_re, a_im, b_re, b_im)  (a_re * b_re - a_im * b_im)
#define complex_mul_im(a_re, a_im, b_re, b_im)  (a_re * b_im + a_im * b_re)


#ifdef __cplusplus
}
#endif

#endif /* _COMPLEX_H_ */