%% Generate twiddle factors for a fixed point
%
% Written mar 2024 by D. Fernandes
%

fft_size = 1024;
fractional_part = 12;

w_re_filename = "w_re";
w_im_filename = "w_im";

w_re=0:(fft_size/2 - 1);
w_im=0:(fft_size/2 - 1);

% generate twiddle factors 
for m = 0:(fft_size/2 - 1)
    w_re(m+1) = cos((2*pi*m)/fft_size);
    w_im(m+1) = sin((2*pi*m)/fft_size);
end

% convert to fixed-point and round to the nearest integer
w_re = round(w_re * 2.^fractional_part); 
w_im = round(w_im * 2.^fractional_part);

%% Write to file
% w_re
stwiddle = sprintf("./%s/%s_twiddles.txt", "twiddle_factors", w_re_filename);
fp = fopen(stwiddle,'w');
fprintf(fp, "%s", regexprep(num2str(w_re),'\s+','\n'));
fclose(fp);

% w_im
stwiddle = sprintf("./%s/%s_twiddles.txt", "twiddle_factors", w_im_filename);
fp = fopen(stwiddle,'w');
fprintf(fp, "%s", regexprep(num2str(w_im),'\s+','\n'));
fclose(fp);

% check the converted number in normal notation
w_re = w_re * 2.^-fractional_part;
w_im = w_im * 2.^-fractional_part;
