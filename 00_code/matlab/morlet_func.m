lb = -4;
ub = 4;
n = 1000;
[psi,xval] = morlet(lb,ub,n);


plot(xval,psi)
xlabel('Sample (n)') 
ylabel('Amplitude') 

