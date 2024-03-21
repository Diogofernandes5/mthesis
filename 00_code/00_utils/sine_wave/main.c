#include<stdlib.h>
#include<stdio.h>
#include<math.h>
#include<stdint.h>

void sine_wave(double sample_freq_i, uint16_t freq_i, uint8_t amplitude_i, uint16_t duration_i, double *waveform_o)
{
	int num_samples = sample_freq_i * duration_i;

	for(int i = 0; i < num_samples; i++)
    {
        double time = i / sample_freq_i;
        waveform_o[i] = amplitude_i * sin(2 * M_PI * freq_i * time);
    }
}

int main(int argc, char *argv[])
{
	double sample_freq = 1000.0;
	int freq = 200;
	int amplitude = 1;
	int duration = 1;
	double waveform[(duration*(int)sample_freq)-1];

	sine_wave(sample_freq, freq, amplitude, duration, waveform);

	int num_samples = sample_freq * duration;

	for (int i = 0; i < num_samples; i++)
		printf("sine[%lf] = %lf\n\r", i/sample_freq, waveform[i]);

	return 0;
}