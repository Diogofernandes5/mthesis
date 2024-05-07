fft_size = 1024;

% generate numbers
x = fix(5*rand(1,fft_size));

% x = [10,20,20,30,30,40,40,50];

% convert to fixed-point
% x = x * 2^10;
% x = fix(x);

% write to file the input vector
input_filename = "./golden_vectors/input.txt";
fp = fopen(input_filename,'w');
fprintf(fp, "%s", regexprep(num2str(x),'\s+','\n'));
fclose(fp);

% fft operation
% x_fft = fft(x);
% fft_re = fix(real(x_fft));
% fft_im = fix(imag(x_fft));
fft_re = zeros(1,fft_size);
fft_im = zeros(1,fft_size);

for i = 1 : 2 : fft_size
    z_re = x(i+1)*1; % assuming w=1+1j
    z_im = x(i+1)*1; % assuming w=1+1j
    fft_re(i) = fix(x(i) + z_re);
    fft_im(i) = fix(0 + z_im);
    fft_re(i+1) = fix(x(i) - z_re);
    fft_im(i+1) = fix(0 - z_re);
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
