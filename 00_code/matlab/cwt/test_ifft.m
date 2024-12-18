N = 1024;
J1 = 4;

fractional_len = 8;
% this refer to the number of points compared to the number os stages:
% if you want half the stages you put half the points
num_stages = N; 

fs = 8000;

%% Calculate Twiddles
[w_re, w_im] = calculate_twiddles(N, fractional_len, 0);

%% FFT operation
y_io = zeros(J1,N);

input_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/output_re.txt";
fp_re = fopen(input_re_filename,'r');

input_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/output_im.txt";
fp_im = fopen(input_im_filename,'r');

for i = 1:J1
    %% Open Inputs from FFT
    x_re = fscanf(fp_re, "%d", N);
    x_re = transpose(x_re);
   
    x_im = fscanf(fp_im, "%d", N);
    x_im = transpose(x_im);
    
    % Create complex array input output 
    x_i = complex(x_re, x_im);

    % Calculate fft results using recursive function
    y_io(i,:) = ifft_frac(x_i, N, num_stages, fractional_len);
    y_normalized = y_io / N;
end

fclose(fp_re);
fclose(fp_im);

% convert from fixed point
y_normalized = y_normalized / 2.^fractional_len;