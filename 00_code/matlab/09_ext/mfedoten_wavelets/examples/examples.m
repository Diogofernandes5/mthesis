%% Examples
% An example script showing use cases of the function.
% The examples are shown on two types of signals: chirp signal and sum of three
% sinusoids with different frequencies. This script demonstrates most of the
% options and their use, as well as provided plot function.
clear all; clc;
addpath('../');

%% Example 1: chirp signal
close all;
% create signal
%N  = 2048;          % number of points
fs = 1024;          % sampling frequency
%t  = (0:N-1)/fs;    % time vector
%x  = chirp(t,0,t(end),fs/2,'quadratic')';
% add a bit of noise
%x  = x + 0.5*randn(size(x));
%fs = 2048;    % Sample rate (Hz)
duration = 1;
N = fs*duration;
t = 0:1/fs:(duration-(1/fs));                % Time vector (5 seconds)
f = 200;
x = sin(2*pi*f*t);

% plot signal
hFigSig = figure;
hFigSig.Position(3:4) = [1.5 0.6].*hFigSig.Position(3:4);
plot(t,x);
set(gca,'FontSize', 12);
xlabel('Time','FontSize',13);
ylabel('Amplitude','FontSize',13);

% CWT: default parameters
[WT,f_wt,t_wt,coi,scales] = wt(x);
hFigWav = figure;
hFigWav.Position(3:4) = [1.5 1.5].*hFigWav.Position(3:4);
ha = axes;
plot_wt(t_wt,f_wt,WT,coi,ha,14);
title('Default options','FontSize',13);

% speicify sampling frequency and choose convolution-based method
% you can specify options as name-value pairs
[WT,f_wt,t_wt,coi,scales] = wt(x,'type','conv','fs',fs,'plot',1);
title('Convolution-based CWT','FontSize',13);

% convolution-based CWT, choose another wavelet (for FFT-based CWT only Morlet
% wavelet is available for the moment)
[WT,f_wt,t_wt,coi,scales] = wt(x,'type','conv','wname','mexh','fs',fs,'plot',1);
title('Convolution-based CWT, using mexican hat wavelet','FontSize',13);

% FFT-based wavelets, sampling in scales (non-linear frequencies)
% or you can specify options as structure
opts = struct('type','fft','fs',fs,'sampling','scales','plot',1);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('FFT-based CWT, non-linear frequencies','FontSize',13);

% the same options, increase number of scales
fprintf('Number of scales before: %d\n', length(scales));
opts = setfield(opts,'nscales',80);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('Increased number of scales','FontSize',13);
fprintf('Number of scales now: %d\n', length(scales));