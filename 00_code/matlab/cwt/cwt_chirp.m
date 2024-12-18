%% CWT Test Example Matlab script for WAVELET, using Chirp function
% Written oct 2023 by D. Fernandes
%

clear all;

%% Generate signal
N = 1024;

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
x = cos(2*pi*t.*(f0 + (f1-f0)*t.^2/(3*t1^2)));
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

no = 4;               % number of octaves - defines the "zoom". if fs
                           % with a bigger fs, "no" needs to be greater to 
                           % include all frequencys
vpo = 16;              % voices per octave - min should be 8 for good res

% no = 4;               % number of octaves - defines the "zoom". if fs
%                            % with a bigger fs, "no" needs to be greater to 
%                            % include all frequencys
% vpo = 1;              % voices per octave - min should be 8 for good res

%s0 = fc/pi;
s0_ind = 2;           % increasing the s0_ind, will make the wavelet start lower in freq                    
s0 = s0_ind*dt;

J1 = no*vpo;

%% Wavelet transform:
[wt,period,scale,freq, coi, daughter] = wavelet(x, fs, no, vpo, s0, mother, omega, pad, fractional_len);
%wt = (abs(wt)).^2;             % compute wavelet power spectrum

daughter_fix = fix(daughter * 2^fractional_len) * 2^-fractional_len;

rel_error(daughter, daughter_fix);

%% Plot the scalogram

rep_scale = 'log2';
plot_cwt(t, freq, wt, coi, fs, rep_scale, N, J1);

title_s = sprintf('Scalogram and Instantaneous Frequencies in %s scale: no=%d; vpo=%d; s0=%1.2f*dt', rep_scale, no, vpo, s0_ind);
title(title_s);

%% Print the inputs and CWT to File 
filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/input.txt";
fprint_vector(real(x), 1, filename, 'w');

filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re.txt";
fprint_vector(real(wt), J1, filename, 'w');

filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_im.txt";
fprint_vector(imag(wt), J1, filename, 'w');

%% Print the Daughter Wavelet to File 
dwavelet_filename = "/home/fernandes/thesis/00_code/matlab/cwt/daughter_wavelet/dwavelet.txt";
fprint_vector(daughter, J1, dwavelet_filename, 'w');

cd ("/home/fernandes/thesis/00_code/matlab/cwt/daughter_wavelet/");
system("./coe_dump.sh dwavelet.txt 10");
cd ("..");

% fp = fopen(dwavelet_filename,'w');
% for i=1:J1
%     fprintf(fp, "%s", regexprep(num2str(daughter(i,:)),'\s+','\n'));
%     fprintf(fp, "\n");
% end
% Convert .txt to .COE file

%% Output data received from Tests
cwt_re_output = zeros(J1,N);
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/output_re.txt";
fp = fopen(output_filename,'r');
for i = 1:J1
    vector = fscanf(fp, "%d", N);
    vector = transpose (vector);

    cwt_re_output(i,:) = vector;
end
fclose(fp);

cwt_im_output = zeros(J1,N);
output_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/output_im.txt";
fp = fopen(output_filename,'r');
for i = 1:J1
    vector = fscanf(fp, "%d", N);
    vector = transpose (vector);

    cwt_im_output(i,:) = vector;
end
fclose(fp);

cwt_fpga = complex(cwt_re_output, cwt_im_output);

rep_scale = 'log2';
plot_cwt(t, freq, cwt_fpga, coi, fs, rep_scale, N, J1);

%% End of code