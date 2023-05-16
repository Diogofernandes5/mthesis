%WAVETEST Example Matlab script for WAVELET
%
% Written may 2023 by D. Fernandes
%

v = [1, 2, 3, 4, 5, 6, 7, 8];

%------------------------------------------------------ Computation

% normalize by standard deviation (not necessary, but makes it easier
% to compare with plot on Interactive Wavelet page, at
% "http://paos.colorado.edu/research/wavelets/plot/"
variance = std(v)^2;
%v = (v - mean(v))/sqrt(variance) ;

n = length(v);
dt = 0.25 ;
time = [0:length(v)-1]*dt ;  % construct time array
xlim = [0,10];  % plotting range
pad = 0;      % pad the time series with zeroes (recommended)
dj = 0.25;    % this will do 4 sub-octaves per octave
s0 = 2*dt;    % this says start at a scale of 6 months
j1 = 1/dj;    % this says do 7 powers-of-two with dj sub-octaves each
lag1 = 0.72;  % lag-1 autocorrelation for red noise background
mother = 'Morlet';

% Wavelet transform:
[wave,period,scale,coi] = wavelet(v, dt, pad, dj, s0, j1, mother)
%power = (abs(wave)).^2 ;        % compute wavelet power spectrum

% end of code
