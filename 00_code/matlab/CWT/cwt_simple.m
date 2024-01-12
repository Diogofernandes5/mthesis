%% CWT_SIMPLE Example Matlab script for WAVELET, using sin wave
%
% Written may 2023 by D. Fernandes
%

%% Generate signal
fs = 100;    % Sample rate (Hz)
duration = 1;
t = 0:1/fs:(duration-(1/fs));                % Time vector (5 seconds)
f = 20;

x = 1:1:8;

%% Wavelet parameters
n = length(x);

dt = 1/fs;
pad = 0;                            % pad the time series with zeros (recommended)

omega = 6;                          % wavelet parameter
fc = omega/(2*pi);                  % central frequency of wavelet

no = 2;                             % number of octaves
vpo = 16;                           % voices per octave

%s0 = fc/pi;
s0 = 1*dt;                          % this says start at a scale of 6 months

j1 = no*vpo;
mother = 'MORLET';

%% Wavelet transform:
[wave,period,scale,freq, coi] = wavelet(x, fs, no, vpo, s0, mother, omega, pad)
%wave = (abs(wave)).^2;             % compute wavelet power spectrum

%% Plot the scalogram
figure;
hp = pcolor(t, freq, abs(wave));   % plot graph

hp.EdgeAlpha = 0;

% colorbar
colormap(jet);
cl = colorbar;
cl.Label.String = "Magnitude";

title("Scalogram and Instantaneous Frequencies")
xlabel("Time (Seconds)");
ylabel("Frequency (Hz)");

%% End of code
