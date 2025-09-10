N = 256;

fractional_len = 8;
% this refer to the number of points compared to the number os stages:
% if you want half the stages you put half the points
num_stages = N; 

%%------------------------------------------------------
%% Generate Inputs
% generate numbers
x_re = 0:1:N-1;
x_im = zeros(1,N);

fs = 8000;         % Sampling frequency
duration = N / fs; % Duration to get exactly 1024 samples
t = 0:1/fs:(duration - 1/fs); % Time vector to generate 1024 samples at 8 kHz
f1 = 500;           % Frequency of first sine wave
f2 = 3000;          % Frequency of second sine wave

x_re = 3 * sin(2 * pi * f1 * t) + sin(2 * pi * f2 * t); % Generated signal
x_re = round(x_re * 2.^fractional_len);

% x_re = 1:1:8;

% write to file the input vector1
input_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/input.txt";
fp = fopen(input_filename,'w');
fprintf(fp, "%s", regexprep(num2str(x_re),'\s+','\n'));
fclose(fp);

%%------------------------------------------------------
%% Calculate Twiddles
[w_re, w_im] = calculate_twiddles(N, fractional_len, 1);

%% FFT operation
%   EXPECTED
y = fft(x_re);
y = y * 2.^-fractional_len;
figure(1); set(gcf, 'Name','Expected FFT', 'NumberTitle', 'off');
k = 0:N/2;
freq = k*fs/N;
stem(freq, abs(y(1:(N/2)+1)));

%   NOT RECURSIVE
% fft_re = zeros(1,N);
% fft_im = zeros(1,N);
% 
% for i = 1 : num_stages
%     [fft_re, fft_im] = bf_operation(N, w_re, w_im, x_re, x_im);
% end

%   RECURSIVE
% Create complex array input output 
x_i = complex(x_re, zeros(1,N));

% Calculate fft results using recursive function
y_io = fft_frac(x_i, N, num_stages, fractional_len);

% Assign real and imaginary final values
fft_re_r = real(y_io) / 2.^fractional_len;
fft_im_r = imag(y_io) / 2.^fractional_len;

fft_o = complex(fft_re_r,fft_im_r);

figure(2); set(gcf, 'Name','Matlab FFT', 'NumberTitle', 'off');
k = 0:N/2;
freq = k*fs/N;
stem(freq, abs(fft_o(1:(N/2)+1)));

%% Write to file the results
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_re.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(real(y_io)),'\s+','\n'));
fclose(fp);

output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_im.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(imag(y_io)),'\s+','\n'));
fclose(fp);

%% Write to file the twiddles
output_filename = "/home/fernandes/thesis/00_code/matlab/twiddle_factors/fft/fft_w_re_twiddles.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(w_re),'\s+','\n'));
fclose(fp);

output_filename = "/home/fernandes/thesis/00_code/matlab/twiddle_factors/fft/fft_w_im_twiddles.txt";
fp = fopen(output_filename,'w');
fprintf(fp, "%s", regexprep(num2str(w_im),'\s+','\n'));
fclose(fp);

% Convert to .COE file
cd("/home/fernandes/thesis/00_code/matlab/twiddle_factors/fft");
system("./coe_dump.sh fft_w_re_twiddles.txt 10");
system("./coe_dump.sh fft_w_im_twiddles.txt 10");
cd("..");

%% Output data received from Tests
x_re_output = zeros(1,N);
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/output_re.txt";
fp = fopen(output_filename,'r');
x_re_output = fscanf(fp, "%d");
x_re_output = transpose(x_re_output);
fclose(fp);

x_im_output = zeros(1,N);
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/output_im.txt";
fp = fopen(output_filename,'r');
x_im_output = fscanf(fp, "%d");
x_im_output = transpose(x_im_output);
fclose(fp);

y_output = complex(x_re_output/2^fractional_len, x_im_output/2^fractional_len);

figure(3); set(gcf, 'Name','FPGA Simulation FFT', 'NumberTitle', 'off');
k = 0:N/2;
freq = k*fs/N;
stem(freq, abs(y_output(1:(N/2)+1)));
