N = 1024;

%% Generate random Inputs
% generate numbers
x_re = fix(8*rand(1,N));
x_im = zeros(1,N);

% x_re = 10:10:10240;

% convert to fixed-point
% x_re = x_re * 2^10;
% x_re = fix(x_re);

% write to file the input vector
input_filename = "./golden_vectors/input.txt";
fp = fopen(input_filename,'w');
fprintf(fp, "%s", regexprep(num2str(x_re),'\s+','\n'));
fclose(fp);

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
w_re = round(w_re_nround); 
w_im = round(w_im_nround);

w_re = zeros(1,N) + 1;
w_im = zeros(1,N) + 1;

%% FFT operation
% x_fft = fft(x_re);
% fft_re = fix(real(x_fft));
% fft_im = fix(imag(x_fft));
fft_re = zeros(1,N);
fft_im = zeros(1,N);

half_N = N/2;

for i = 1 : 1 : (N/2)
    z_re = x_re(i+half_N)*w_re(i) - x_im(i+half_N)*w_im(i); % assuming w=1+1j
    z_im = x_re(i+half_N)*w_im(i) + x_im(i+half_N)*w_re(i); % assuming w=1+1j
    fft_re(i) =         fix(x_re(i) + z_re);
    fft_im(i) =         fix(x_im(i) + z_im);
    fft_re(i+half_N) =  fix(x_re(i) - z_re);
    fft_im(i+half_N) =  fix(x_im(i) - z_im);
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
