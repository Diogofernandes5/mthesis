%% CWT Test Example Matlab script for WAVELET, using Chirp function
% Written oct 2023 by D. Fernandes
%

clear all;

%% Generate signal
fs = 2048;

% time limits
t0 = 0;
t1 = 5;

% time
t = t0:1/fs:t1-(1/fs);

% chirp frequencies
f0 = 50;
f1 = 250;

% chirp function
%x = chirp(t,f0,t1,f1,'quadratic');
x = cos(2*pi*t.*(f0 + (f1-f0)*t.^2/(3*t1^2)));

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

%s0 = fc/pi;
s0_ind = 2;                                   
s0 = s0_ind*dt;

j1 = no*vpo;
mother = 'Morlet';

%% Wavelet transform:
[wave,period,scale,freq, coi] = wavelet(x, fs, no, vpo, s0, mother, omega, pad)
%wave = (abs(wave)).^2;             % compute wavelet power spectrum

%% Plot the scalogram
tickmin = 10;
tickmax = fs/2;

scale = 'lin';
plot_cwt(t, freq, wave, coi, fs, scale, tickmin, tickmax);

title_s = sprintf('Scalogram and Instantaneous Frequencies in %s scale: no=%d; vpo=%d; s0=%1.2f*dt', scale, no, vpo, s0_ind);
title(title_s);

if (contains(scale,'log2','IgnoreCase',true))
   axis([0 5 log2(32) log2(512)]);
elseif (contains(scale,'log10','IgnoreCase',true))
   axis([0 5 log10(10) log10(500)]);
else 
   axis([0 5 32 400]);
end

%% End of code

