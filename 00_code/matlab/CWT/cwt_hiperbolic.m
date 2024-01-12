%% CWT_SIN Example Matlab script for WAVELET, using sin wave
%
% Written may 2023 by D. Fernandes
%

%% Generate signal
clear all; 

fs = 2048;    % Sample rate (Hz)
duration = 1;
t = 0:1/fs:(duration-(1/fs));                % Time vector (5 seconds)
f = 200;

load hyperbolicChirp
x = hyperbolchirp;

%% Wavelet parameters
n = length(x);

dt = 1/fs;
pad = 0;                            % pad the time series with zeros (recommended)

omega = 6;                          % wavelet parameter
%fc = omega/(2*pi);                  % central frequency of wavelet

no = 8;                             % number of octaves - defines the "zoom". if fs
                                        % with a bigger fs, "no" needs to be greater to 
                                        % include all frequencys
vpo = 64;                           % voices per octave

s0_ind = 4;                        % 0.2 for no=16            
s0 = s0_ind*dt;

j1 = no*vpo;
mother = 'MORLET';

%% Wavelet transform:
[wave,period,scale,freq, coi] = wavelet(x, fs, no, vpo, s0, mother, omega, pad)
%wave = (abs(wave)).^2;             % compute wavelet power spectrum

%% Plot the scalogram
tickmin = 2;
tickmax = fs/2;

scale = 'lin';
plot_cwt(t, freq, wave, coi, fs, scale, tickmin, tickmax);

title_s = sprintf('Scalogram and Instantaneous Frequencies in %s scale: no=%d; vpo=%d; s0=%1.2f*dt', scale, no, vpo, s0_ind);
title(title_s);

%% End of code
