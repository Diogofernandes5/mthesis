% Sample signal (replace this with your own signal)
fs = 1000;      % Sample rate (Hz)
t = 0:1/fs:5;   % Time vector (5 seconds)
f0 = 10;        % Frequency of the signal (10 Hz)
signal = sin(2*pi*f0*t);

% Perform Continuous Wavelet Transform
helperPlotScalogram(signal, fs);