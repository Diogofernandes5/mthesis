function [w_re,w_im] = calculate_twiddles(N, fractional_len)
    w_re=0:(N/2 - 1);
    w_im=0:(N/2 - 1);
      
    % generate twiddle factors 
    for m = 1:(N/2)
        angle = -2 * pi * (m-1) / N;

        w_re(m) = cos(angle);
        w_im(m) = sin(angle);
    end
    
    %********** Using fractional part **********
    w_re_nround = w_re;
    w_im_nround = w_im;
    
    % convert to fixed-point and round to the nearest integer
    w_re = round(w_re * 2.^fractional_len);
    w_im = round(w_im * 2.^fractional_len);
    
    %********** Not Using fractional part **********
    % round to the nearest integer
    % w_re = round(w_re);
    % w_im = round(w_im);
    
    % w_re = round(w_re);
    % w_im = round(w_im);
    
    % w_re = zeros(1,N) + 1;
    % w_im = zeros(1,N) + 1;

end