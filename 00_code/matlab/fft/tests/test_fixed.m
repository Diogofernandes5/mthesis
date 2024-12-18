% Define fixed-point parameters 
wordLength = 16; 
fractionLength = 15; 

N = 64;

fs = N;
duration = 1;
t = 0:1/fs:(duration-(1/fs));
f1 = 5;
floatData = sin(2*pi*f1*t);

% Example floating-point data and twiddles 
% floatData = 0:1:N-1; 

fixedData = floatData * 2.^fractionLength; 

% Perform FFT (example function, replace with actual FFT implementation) 
fixedFFTResult = fft(fixedData); 

% Replace with fixed-point FFT function 
% Convert back to floating-point 
floatFFTResult = double(fixedFFTResult) / 2^fractionLength; 

% Display results 
figure(1);
k = 0:N/2;
freq = k*fs/N;
stem(freq, abs(floatFFTResult(1:(N/2)+1)));