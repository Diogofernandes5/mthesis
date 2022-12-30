L = 50;
ts=1;
t=0:1/ts:L-1/ts;

x = 1*rand(L,1);

w = hamming(L);
wvtool(hamming(L))

res = x.*w;

%plots
tiledlayout(2,1);

nexttile
set(gca,'fontsize',24)
plot(t,x)
xlabel('Sample (n)') 
ylabel('Amplitude') 
title('Signal x(n)')

nexttile
plot(t,res)
xlabel('Sample (n)') 
ylabel('Amplitude') 
title('Windowed Signal x_w(n)')
