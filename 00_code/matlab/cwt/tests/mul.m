N = 256;

fractional_len = 8;

fs = 8000;                      % Sampling frequency
duration = N / fs;              % Duration to get exactly 1024 samples
t = 0:1/fs:(duration - 1/fs);   % Time vector to generate 1024 samples at 8 kHz
f0 = 300;                       % Frequency of first sine wave
f1 = 700;                       % Frequency of second sine wave

% time limits
t0 = 0;
t1 = duration;

% two sinusoidal
x = sin(2 * pi * f0 * t) + sin(2 * pi * f1 * t); % Generated signal

% chirp function
%x = chirp(t,f0,t1,f1,'quadratic');
% x = cos(2*pi*t.*(f0 + (f1-f0)*t.^2/(3*t1^2)));
x = fix(x * 2^fractional_len);
x = complex(x,zeros(1,N));

%% Wavelet parameters
dt = 1/fs;
pad = 0;                             % pad the time series with zeros (recommended)

% omega = 4.;                          % wavelet parameter for PAUL
% omega = 2.;                          % wavelet parameter for DOG
omega = 6.;                          % wavelet parameter for MORLET
%fc = omega/(2*pi);                  % central frequency of wavelet

mother = 'MORLET';

% no = 4;               % number of octaves - defines the "zoom". if fs
%                            % with a bigger fs, "no" needs to be greater to 
%                            % include all frequencys
% vpo = 16;              % voices per octave - min should be 8 for good res

no = 4;               % number of octaves - defines the "zoom". if fs
                           % with a bigger fs, "no" needs to be greater to 
                           % include all frequencys
vpo = 1;              % voices per octave - min should be 8 for good res

%s0 = fc/pi;
s0_ind = 2;           % increasing the s0_ind, will make the wavelet start lower in freq                    
s0 = s0_ind*dt;

J1 = no*vpo;

%% Construct wavenumber array used in transform [Eqn(5)]
% k represents w
k = 1:fix(N/2);
multiplier = ((2.*(pi*fs))/N);
k = k.*multiplier;
k = [0., k, -k(fix((N-1)/2):-1:1)];

%% Construct SCALE array & empty PERIOD & WAVE arrays
J1 = no*vpo;

a0 = 2^(1/vpo);
ind = 0:(J1-1);
scale = s0*(a0.^ind);

period = scale;        % declare the period array
param = 6.;   


%% Send to file
mul_re_i_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/input_re.txt";
mul_im_i_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/input_im.txt";

fp_mul_re_input = fopen(mul_re_i_filename, 'w');
if(fp_mul_re_input == -1)
    error("Couldn't open file: %s", mul_re_i_filename);
end

fp_mul_im_input = fopen(mul_im_i_filename, 'w');
if(fp_mul_im_input == -1)
    error("Couldn't open file: %s", mul_im_i_filename);
end

mul_input = x;
% print re input of mul to file
fprintf(fp_mul_re_input, "%s", regexprep(num2str(real(mul_input)),'\s+','\n'));
fprintf(fp_mul_re_input, "\n");
% print im input of mul to file
fprintf(fp_mul_im_input, "%s", regexprep(num2str(imag(mul_input)),'\s+','\n'));
fprintf(fp_mul_im_input, "\n");

fclose(fp_mul_re_input);
fclose(fp_mul_im_input);

%% Write ouput of mul module to file
mul_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_re.txt";
mul_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_im.txt";

fp_mul_re_golden = fopen(mul_re_filename, 'w');
if(fp_mul_re_golden == -1)
    error("Couldn't open file: %s", mul_re_filename);
end

fp_mul_im_golden = fopen(mul_im_filename, 'w');
if(fp_mul_im_golden == -1)
    error("Couldn't open file: %s", mul_im_filename);
end

for j = 1:J1
	[daughter,fourier_factor,e_folding,dofmin] = wave_bases(mother, k, scale(j), param, fs);
    daughter = fix(daughter * 2^fractional_len);
    % daughter = fix(2 * 2^fractional_len);
    % wavelet(j,:) = daughter;
        
    mul_output = mul_input.*daughter;
    % print re golden of mul to file
    fprintf(fp_mul_re_golden, "%s", regexprep(num2str(real(mul_output)),'\s+','\n'));
    fprintf(fp_mul_re_golden, "\n");
    % print im golden of mul to file
    fprintf(fp_mul_im_golden, "%s", regexprep(num2str(imag(mul_output)),'\s+','\n'));
    fprintf(fp_mul_im_golden, "\n");
end

fclose(fp_mul_im_golden);
fclose(fp_mul_re_golden);
