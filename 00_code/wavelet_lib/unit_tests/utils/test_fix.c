#include <stdio.h>
#include <stdint.h>

int fix(double val)
{
    int truncated = (int)val;
    return truncated;
}

int main (int argc, const char *argv)
{
	printf("fix(%f) = %d\n\r", 3.7f, (fix(3.7f)));
	printf("fix(%f) = %d\n\r", -3.7f, (fix(3.7f)));
	
	return 0;
}