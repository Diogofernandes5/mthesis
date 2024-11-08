function [fft_ve, fft_vo] = bf_operation_recursive(ve, vo, w, fractional_len);

    z_re = fix(real(vo) * real(w)) - fix(imag(vo) * imag(w));
    z_im = fix(real(vo) * imag(w)) + fix(imag(vo) * real(w));

    z_re = fix(z_re * 2.^-fractional_len);
    z_im = fix(z_im * 2.^-fractional_len);
    
    fft_ve = complex( fix(real(ve) + z_re), fix(imag(ve) + z_im) );
    fft_vo = complex( fix(real(ve) - z_re), fix(imag(ve) - z_im) ); 

    % fft_ve = complex( real(ve) + z_re, imag(ve) + z_im );
    % fft_vo = complex( real(ve) - z_re, imag(ve) - z_im ); 
    
    % if(fft_re(i) > max_32bits)
    % fft_re(i) = max_32bits;
    % endif
    % 
    % if(fft_im(i) > max_32bits) 
    % fft_im(i) = max_32bits;
    % endif
    % 
    % if(fft_re(i+half_N) > max_32bits)
    % fft_re(i+half_N) = max_32bits;
    % endif
    % 
    % if(fft_im(i+half_N) > max_32bits) 
    % fft_im(i+half_N) = max_32bits;
    % endif

return