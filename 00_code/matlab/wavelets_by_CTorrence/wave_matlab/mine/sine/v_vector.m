%WAVETEST Example Matlab script for WAVELET
%
% Written may 2023 by D. Fernandes
%

%% Generate signal
fs = 1000;                          % Sample rate (Hz)
t = 0:1/fs:(5-1/fs);                % Time vector (5 seconds)
f0 = 10;                            % Frequency of the signal (10 Hz)

v = sin(2*pi*f0*t);

%% Wavelet parameters
n = length(v);

dt = 1/fs;
pad = 0;                            % pad the time series with zeros (recommended)

omega = 6;                          % wavelet parameter
fc = omega/(2*pi);                  % central frequency of wavelet

no = 8;                             % number of octaves
vpo = 16;                           % voices per octave

%s0 = fc/pi;
s0 = 2*dt;                          % this says start at a scale of 6 months

j1 = no*vpo;
mother = 'Morlet';

%% Wavelet transform:
[wave,period,scale,freq, coi] = wavelet(v, fs, pad, no, vpo, s0, j1, mother, omega)
power = (abs(wave)).^2;             % compute wavelet power spectrum

%% Plot the scalogram
figure;
hp = pcolor(t, freq, abs(power));   % plot graph

hp.EdgeAlpha = 0;

% colorbar
colormap(jet);
cl = colorbar;
cl.Label.String = "Magnitude";

title("Scalogram and Instantaneous Frequencies")
xlabel("Time (Seconds)");
ylabel("Frequency (Hz)");

%% End of code
