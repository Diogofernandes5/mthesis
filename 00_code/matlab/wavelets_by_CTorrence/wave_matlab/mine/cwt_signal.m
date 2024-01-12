%WAVETEST Example Matlab script for WAVELET
%
% Written may 2023 by D. Fernandes
%

% Sample signal
fs = 1000;                          % Sample rate (Hz)
t = 0:1/fs:5;                       % Time vector (5 seconds)
f0 = 10;                            % Frequency of the signal (10 Hz)
signal = sin(2*pi*f0*t);

% Computation
n = length(signal);
dt = 1/fs;
time = [0:length(signal)-1]*dt;     % construct time array
pad = 0;                            % pad the time series with zeroes (recommended)
dj = 0.1;                           % this will do 4 sub-octaves per octave
s0 = 2*dt;                          % this says start at a scale of 6 months
j1 = 10/dj;                         % this says do 7 powers-of-two with dj sub-octaves each
mother = 'Morlet';

% Wavelet transform:
[wave,period,scale,coi] = wavelet(signal, dt, pad, dj, s0, j1, mother)
%power = (abs(wave)).^2 ;           % compute wavelet power spectrum

frequencies = scal2frq(scale, 'morl', 1/fs);

% Plot the scalogram

%f = scale.*fs
%plotScalogram(period, f, wave);
%plotScalogram(t, frequencies, wave);

% Plot the scalogram with frequencies
figure;
imagesc(t, frequencies, abs(wave));
colormap(jet); % You can choose different colormaps
colorbar;
xlabel('Time (seconds)');
ylabel('Frequency (Hz)');
title('Scalogram');

% end of code
