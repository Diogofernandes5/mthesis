%% FFT operation

function [fft_re, fft_im] = bf_operation(N, w_re, w_im, x_re, x_im);

% global max_32bits = 2147483647;

half_N = N/2;

fft_re = zeros(1,N);
fft_im = zeros(1,N);

for i = 2 : 2 : N
    z_re = x_re(i)*w_re(i/2) - x_im(i)*w_im(i/2); 
    z_im = x_re(i)*w_im(i/2) + x_im(i)*w_re(i/2); 

    fft_re(i/2) =        fix(x_re(i-1) + z_re);
    fft_im(i/2) =        fix(x_im(i-1) + z_im); 
    fft_re(i/2+half_N) = fix(x_re(i-1) - z_re);
    fft_im(i/2+half_N) = fix(x_im(i-1) - z_im);
    
    % z_re = x_re(i+half_N)*w_re(i) - x_im(i+half_N)*w_im(i); 
    % z_im = x_re(i+half_N)*w_im(i) + x_im(i+half_N)*w_re(i); 
    % 
    % fft_re(i) =         fix(x_re(i) + z_re);
    % fft_im(i) =         fix(x_im(i) + z_im);
    % fft_re(i+half_N) =  fix(x_re(i) - z_re);
    % fft_im(i+half_N) =  fix(x_im(i) - z_im); 
    
    % if(fft_re(i) > max_32bits)
    %   fft_re(i) = max_32bits;
    % endif
    % 
    % if(fft_im(i) > max_32bits) 
    %   fft_im(i) = max_32bits;
    % endif
    % 
    % if(fft_re(i+half_N) > max_32bits)
    %   fft_re(i+half_N) = max_32bits;
    % endif
    % 
    % if(fft_im(i+half_N) > max_32bits) 
    %   fft_im(i+half_N) = max_32bits;
    % endif
end

return