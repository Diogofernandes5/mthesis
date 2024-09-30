%% Generate twiddle factors for a fixed point
%
% Written mar 2024 by D. Fernandes
%

N = 1024;
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

% Write to file
% w_re
stwiddle = sprintf("./%s_twiddles.txt", w_re_filename);
fp = fopen(stwiddle,'w');
fprintf(fp, "%s", regexprep(num2str(w_re),'\s+','\n'));
fclose(fp);

% w_im
stwiddle = sprintf("./%s_twiddles.txt", w_im_filename);
fp = fopen(stwiddle,'w');
fprintf(fp, "%s", regexprep(num2str(w_im),'\s+','\n'));
fclose(fp);

% check the converted number in normal notation
% w_re = w_re * 2.^-fractional_part;
% w_im = w_im * 2.^-fractional_part;

% check the error associated to the rounded conversion
% w_re_nround = w_re_nround * 2.^-fractional_part;
% w_im_nround = w_im_nround * 2.^-fractional_part;

%% Calculate twiddle factors (re and im) for the same 32 bit variable 
% w_re_hex = dec2hex(w_re,14);
% w_im_hex = dec2hex(w_im,14);

% convert to binary and trim data to have only 14 bits width
w_re_bin = trimdata(dec2bin(w_re,14),[512 14], Side="leading");
w_im_bin = trimdata(dec2bin(w_im,14),[512 14], Side="leading");

% concatenate arrays in one array
w = cat(2,w_re_bin,w_im_bin);

% convert to decimal and put it in one row for printing effects
w = transpose(bin2dec(w));

% Write to file
stwiddle = sprintf("./twiddles.txt");
fp = fopen(stwiddle,'w');
fprintf(fp, "%s", regexprep(num2str(w),'\s+','\n'));
fclose(fp);

%% Calculate addresses to twiddle ROM
num_stages = log2(N);

% create matrix num_stages by N/2 (BF_counter) (see notebook)
address = zeros(num_stages, N/2);

% bit lenght is equivalent to the number of bit necessary to address half 
% size of the fft
bit_length = log2(N/2);

w_stages = zeros(num_stages, N/2);

for i=0:num_stages-1 % stage counter
    step = N/(2^(i+1));
    for j=0:(N/2-1) % BF_counter
        % calculate address based on the step and the BF_counter
        address(i+1,j+1) = j*step;
        
        % convert to binary
        bin_aux = dec2bin(address(i+1,j+1));
        % trim date to only the necessary bit lenght
        bin_aux = trimdata(bin_aux, bit_length, Side="leading");
        
        % reconvert to decimal
        address(i+1,j+1) = bin2dec(bin_aux) + 1;

        if j < 2^i % BF_counter
            w_stages(i+1,j+1) = w(address(i+1,j+1));
        end
    end
end

%% Print twiddles for every stage 
for i = 0:(num_stages - 1) % stage counter
    stwiddle = sprintf("./%s/stage%d_twiddles.txt", num2str(N)+"-point", i);
    fp = fopen(stwiddle,'w');
    
    % substitute spaces for paragraphs
    exp = regexprep(num2str(w_stages(i+1,:)),'\s+','\n');
    % eliminate zero values
    exp = regexprep(exp,'\n0','');

    fprintf(fp, "%s", exp);
    fclose(fp);
end

command = sprintf("%s/", num2str(N)+"-point");
cd(command);
for i = 0:(num_stages - 1) % stage counter
    command = sprintf("./coe_dump.sh stage%d_twiddles.txt 10", i);
    system(command);
end