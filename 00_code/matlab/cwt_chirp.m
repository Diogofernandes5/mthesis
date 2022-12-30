clear all;

fs = 1000;
t = 0:1/fs:2;

%chirp frequencies
f0 = 50;
f1 = 250;
t1 = 2;

%chirp function
%x = chirp(t,f0,t1,f1,'quadratic');
x = cos(2*pi*t.*(f0 + (f1-f0)*t.^2/(3*t1^2)));

[cfs,f] = cwt(x,fs);
psd_cfs = abs(cfs).^2;

colormap jet;
figure(1);
cwt(x, fs);

figure(2);
helperPlotScalogram(x,fs);

