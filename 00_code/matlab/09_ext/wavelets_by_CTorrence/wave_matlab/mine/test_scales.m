vpo = 10;
no = 5;
a0 = 2^(1/vpo);
ind = 0:vpo*no;
sc = a0.^ind;

plot(ind,sc)
title('Scales')
xlabel('Index')
ylabel('Scale')
grid on
set(gca,'YTick',2.^(0:5))