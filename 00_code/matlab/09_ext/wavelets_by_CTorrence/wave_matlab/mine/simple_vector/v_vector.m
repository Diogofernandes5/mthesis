%WAVETEST Example Matlab script for WAVELET
%
% Written may 2023 by D. Fernandes
%

%v = [1, 2, 3, 4, 5, 6, 7, 8];

% Computation

% normalize by standard deviation (not necessary, but makes it easier
% to compare with plot on Interactive Wavelet page, at
% "http://paos.colorado.edu/research/wavelets/plot/"
%variance = std(v)^2;
%v = (v - mean(v))/sqrt(variance) ;

%% Generate signal
fs = 1000;      % Sample rate (Hz)
t = 0:1/fs:5;   % Time vector (5 seconds)
f0 = 10;        % Frequency of the signal (10 Hz)
v = sin(2*pi*f0*t);

%% Wavelet parameters
n = length(v);
dt = 1/fs;
time = [0:length(v)-1]*dt;  % construct time array
xlim = [0,10];  % plotting range
pad = 0;      % pad the time series with zeroes (recommended)
vpo = 16;
dj = 1/vpo;    % this will do 4 sub-octaves per octave also called voices per octave
s0 = 2*dt;    % this says start at a scale of 6 months
NO = 7;
j1 = NO/dj;    % this says do 7 powers-of-two with dj sub-octaves each
mother = 'Morlet';
omega = 6;

%% Wavelet transform:
[wave,period,scale,freq,coi] = wavelet(v, dt, pad, dj, s0, j1, mother, omega)
%power = (abs(wave)).^2 ;        % compute wavelet power spectrum

f = scal2frq(scale, 'morl', dt);

%% Plot the scalogram
figure;
imagesc(time, scale, abs(wave));
colormap(jet); % You can choose different colormaps
colorbar;
xlabel('Time (seconds)');
ylabel('Scale');
title('Scalogram');

% end of code
