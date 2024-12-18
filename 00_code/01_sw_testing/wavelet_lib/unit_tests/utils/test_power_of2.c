#include <stdio.h>
#include <math.h> // -lm flag needed
#include <stdint.h>

uint8_t isInteger(double val)
{
    int truncated = (int)val;
    return (val == truncated);
}


uint8_t is_powerof2(int n)
{
	double log_n = (log(n)/log(2));
	return isInteger(log_n);
}

int main (int argc, const char *argv)
{
	printf("%d is power of two? %s\n\r", 32, (is_powerof2(32.0) ? "yes" : "no"));
	printf("%d is power of two? %s\n\r", 64, (is_powerof2(64.0) ? "yes" : "no"));
	printf("%d is power of two? %s\n\r", 52, (is_powerof2(54.0) ? "yes" : "no"));

	return 0;

}