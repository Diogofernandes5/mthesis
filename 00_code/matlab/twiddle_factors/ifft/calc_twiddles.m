%% Generate twiddle factors for a fixed point iFFT
%
% Written mar 2024 by D. Fernandes
%

N = 1024;
fractional_len = 8;

w_re_filename = "ifft_w_re_twiddles.txt";
w_im_filename = "ifft_w_im_twiddles.txt";

w_re=0:(N/2 - 1);
w_im=0:(N/2 - 1);

% generate twiddle factors 
for m = 1:(N/2)
    w_re=0:(N/2 - 1);
    w_im=0:(N/2 - 1);
      
    % generate twiddle factors 
    for m = 1:(N/2)
        angle = 2 * pi * (m-1) / N;

        w_re(m) = cos(angle);
        w_im(m) = sin(angle);
    end
    
    % convert to fixed-point and round to the nearest integer
    w_re = round(w_re * 2.^fractional_len);
    w_im = round(w_im * 2.^fractional_len);
end

% Write to file
% w_re
fp = fopen(w_re_filename,'w');
fprintf(fp, "%s", regexprep(num2str(w_re),'\s+','\n'));
fclose(fp);

% w_im
fp = fopen(w_im_filename,'w');
fprintf(fp, "%s", regexprep(num2str(w_im),'\s+','\n'));
fclose(fp);

% Convert to .COE file
cd("/home/fernandes/thesis/00_code/matlab/twiddle_factors/ifft/");
system("./coe_dump.sh ifft_w_re_twiddles.txt 10");
system("./coe_dump.sh ifft_w_im_twiddles.txt 10");
cd("..");
