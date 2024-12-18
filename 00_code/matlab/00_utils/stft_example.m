fs = 10e3;
t = 0:1/fs:2;

f0 = 50;
f1 = 250;
t1 = 2;

%x = vco(sin(2*pi*t),[0.1 0.4]*fs,fs);
x = cos(2*pi*t.*(f0 + (f1-f0)*t.^2/(3*t1^2)));

%Window=kaiser(256,5);
Window=hamming(256);
OverlapLength=220;
FFTLength=512;

[s,f,t] = stft(x,fs,'Window',Window,'OverlapLength',OverlapLength,'FFTLength',FFTLength);

sdb = mag2db(abs(s));
mesh(t,f/1000,sdb);

colormap jet % see matlab color map reference
cc = max(sdb(:))+[-60 0];
ax = gca;
ax.CLim = cc;
view(2)
colorbar