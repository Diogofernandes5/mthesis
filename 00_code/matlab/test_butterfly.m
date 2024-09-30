N = 1024;
num_stages = 2;

%%------------------------------------------------------
%% Generate random Inputs
% generate numbers
x_re = fix(8*rand(1,N));
x_im = zeros(1,N);

fs = 1024;
duration = 1;
t = 0:1/fs:(duration-(1/fs));
f1 = 50;
x_re = fix(8*sin(2*pi*f1*t));
%x_re = [1,2,3,4,5,6,7,8];
%plot(t,x_re);

%% plot fft
%y = fft(x_re);
%k = 0:N/2;
%freq = k*fs/N;
%stem(freq, abs(y(1:(N/2)+1)));


%%------------------------------------------------------
% convert to fixed-point
% x_re = x_re * 2^10;
x_re = fix(x_re);

% write to file the input vector1
input_filename = "./golden_vectors/input.txt";
fp = fopen(input_filename,'w');
fprintf(fp, "%s", regexprep(num2str(x_re),'\s+','\n'));
fclose(fp);

%%------------------------------------------------------
%% Calculate Twiddles
fractional_part = 12;

w_re_filename = "w_re";
w_im_filename = "w_im";

w_re=0:(N/2 - 1);
w_im=0:(N/2 - 1);

% generate twiddle factors 
for m = 0:(N/2 - 1)
    w_re(m+1) = cos((2*pi*m)/N);
    w_im(m+1) = sin((2*pi*m)/N);
end

% convert to fixed-point
w_re_nround = w_re * 2.^fractional_part; 
w_im_nround = w_im * 2.^fractional_part;

% round to the nearest integer
w_re = round(w_re_nround)
w_im = round(w_im_nround)

% w_re = zeros(1,N) + 1;
% w_im = zeros(1,N) + 1;

%% FFT operation
fft_re = zeros(1,N);
fft_im = zeros(1,N);

for i = 1 : num_stages
    [fft_re, fft_im] = bf_operation(N, w_re, w_im, x_re, x_im);
    
    x_re = fft_re;
    x_im = fft_im;
end

% write to file the results
output_filename = "./golden_vectors/golden_re.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(fft_re),'\s+','\n'));
fclose(fp);

output_filename = "./golden_vectors/golden_im.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(fft_im),'\s+','\n'));
fclose(fp);
