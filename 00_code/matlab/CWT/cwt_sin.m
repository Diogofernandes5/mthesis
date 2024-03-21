%% CWT_SIN Example Matlab script for WAVELET, using sin wave
%
% Written may 2023 by D. Fernandes
%
clear all;

%% Generate signal
% fs = 2^15;    % Sample rate (Hz)
% duration = 1;
% t = 0:1/fs:(duration-(1/fs));                % Time vector (5 seconds)
% f = 200;
% 
% x = sin(2*pi*f*t)+sin(2*pi*50*t)+sin(2*pi*800*t);

fs = 1024;    % Sample rate (Hz)
duration = 1;
t = 0:1/fs:(duration-(1/fs));                % Time vector (5 seconds)
f = 200;

x = sin(2*pi*f*t);

%% Wavelet parameters
n = length(x);

dt = 1/fs;
pad = 0;                            % pad the time series with zeros (recommended)

omega = 6;                          % wavelet parameter
%fc = omega/(2*pi);                  % central frequency of wavelet

no = 8;                             % number of octaves - defines the "zoom". if fs
                                        % with a bigger fs, "no" needs to be greater to 
                                        % include all frequencys                                   
vpo = 8;                           % voices per octave - defines the resolution

%s0 = fc/pi; 
s0_ind = 0.3; % for no = 16         
s0_ind = 0.1; % for no = 16 
%s0_ind = 28; % for no = 8
s0 = s0_ind*dt;

j1 = no*vpo;
mother = 'MORLET';

%% Wavelet transform:
[wave,period,scale,freq, coi] = wavelet(x, fs, no, vpo, s0, mother, omega, pad)
%wave = (abs(wave)).^2;             % compute wavelet power spectrum

%% Plot the scalogram
tickmin = 2;
tickmax = fs/2;

scale = 'log2';
plot_cwt(t, freq, wave, coi, fs, scale, tickmin, tickmax);

title_s = sprintf('Scalogram and Instantaneous Frequencies in %s scale: no=%d; vpo=%d; s0=%1.2f*dt', scale, no, vpo, s0_ind);
title(title_s);

%% End of code
