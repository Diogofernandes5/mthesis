N = 1024;

fractional_len = 8;
% this refer to the number of points compared to the number os stages:
% if you want half the stages you put half the points
num_stages = N; 

fs = 8000;

%%------------------------------------------------------
%% Open Inputs from FFT
input_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_re.txt";
fp = fopen(input_filename,'r');
x_re = fscanf(fp, "%d", N);
x_re = transpose(x_re);
fclose(fp);

input_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_im.txt";
fp = fopen(input_filename,'r');
x_im = fscanf(fp, "%d", N);
x_im = transpose(x_im);
fclose(fp);

%%------------------------------------------------------
%% Calculate Twiddles
[w_re, w_im] = calculate_twiddles(N, fractional_len, 0);

%% FFT operation
%   EXPECTED
y = ifft(complex(x_re,x_im));
y = y * 2.^-fractional_len;
figure(1); set(gcf, 'Name','Expected FFT', 'NumberTitle', 'off');
k = 0:N/2;
freq = k*fs/N;
stem(freq, abs(y(1:(N/2)+1)));

%   MATLAB
% Create complex array input output 
x_i = complex(x_re, x_im);

% Calculate fft results using recursive function
y_io = ifft_frac(x_i, N, num_stages, fractional_len);
y_normalized = y_io / N;

% convert from fixed point
y_normalized = y_normalized / 2.^fractional_len;

figure(2); set(gcf, 'Name','Matlab FFT', 'NumberTitle', 'off');
k = 0:N/2;
freq = k*fs/N;
stem(freq, abs(y_normalized(1:(N/2)+1)));

%% Write to file the results
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_re.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(real(y_io)),'\s+','\n'));
fclose(fp);

output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_im.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(imag(y_io)),'\s+','\n'));
fclose(fp);

%% Write to file the twiddles
output_filename = "/home/fernandes/thesis/00_code/matlab/twiddle_factors/ifft/ifft_w_re_twiddles.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(w_re),'\s+','\n'));
fclose(fp);

output_filename = "/home/fernandes/thesis/00_code/matlab/twiddle_factors/ifft/ifft_w_im_twiddles.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(w_im),'\s+','\n'));
fclose(fp);

% Convert to .COE file
cd("/home/fernandes/thesis/00_code/matlab/twiddle_factors/ifft");
system("./coe_dump.sh ifft_w_re_twiddles.txt 10");
system("./coe_dump.sh ifft_w_im_twiddles.txt 10");
cd("..");

%% Output data received from FPGA Tests
x_re_output = zeros(1,N);
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_re.txt";
fp = fopen(output_filename,'r');
x_re_output = fscanf(fp, "%d");
x_re_output = transpose(x_re_output);
fclose(fp);

x_im_output = zeros(1,N);
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_im.txt";
fp = fopen(output_filename,'r');
x_im_output = fscanf(fp, "%d");
x_im_output = transpose(x_im_output);
fclose(fp);

% normalize it and convert from fixed point
y_output = complex(x_re_output/(N * 2^fractional_len), x_im_output/(N * 2^fractional_len));

figure(3); set(gcf, 'Name','FPGA Simulation FFT', 'NumberTitle', 'off');
k = 0:N/2;
freq = k*fs/N;
stem(freq, abs(y_output(1:(N/2)+1)));
