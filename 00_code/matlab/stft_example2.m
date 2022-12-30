fs = 1000;
t = 0:1/fs:2;

f0 = 50;
f1 = 250;
t1 = 2;

%x = chirp(t,f0,t1,f1,'quadratic');
x = cos(2*pi*t.*(f0 + (f1-f0)*t.^2/(3*t1^2)));

w = hamming(100);
wvtool(w);

% There is a typo in Matlab documentation...
% ... divide by 3 so derivative amplitude matches frequency
figure;
colormap jet % see matlab color map reference
%spectrogram(x,128,120,128,fs,'yaxis')
spectrogram(x,128,120,128,fs,'yaxis')

figure;
plot(t,x)