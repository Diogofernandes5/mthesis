%WAVELET  1D Wavelet transform with optional singificance testing
%
%   [cfs,PERIOD,SCALE,COI] = wavelet(Y,DT,PAD,DJ,S0,J1,MOTHER,PARAM)
%
%   Computes the wavelet transform of the vector Y (length N),
%   with sampling rate DT.
%
%   By default, the Morlet wavelet (k0=6) is used.
%   The wavelet basis is normalized to have total energy=1 at all scales.
%
%
% INPUTS:
%
%    Y = the time series of length N.
%    DT = amount of time between each Y value, i.e. the sampling time.
%
% OUTPUTS:
%
%    cfs is the WAVELET transform of Y. This is a complex array
%    of dimensions (N,J1+1). FLOAT(cfs) gives the WAVELET amplitude,
%    ATAN(IMAGINARY(cfs),FLOAT(cfs) gives the WAVELET phase.
%    The WAVELET power spectrum is ABS(cfs)^2.
%    Its units are sigma^2 (the time series variance).
%
%
% OPTIONAL INPUTS:
% 
% *** Note *** setting any of the following to -1 will cause the default
%               value to be used.
%       
%    NO = number of octaves.Each octave represents a specific frequency band 
%           where the higher part of the octave has a frequency range that is 
%           double that of the lower part. 
%
%    VPO = voices per octave - number of scales between each octave 
%          (the spacing between discrete scales). Default is 4.
%         A greater # will give better scale resolution, but be slower to plot.
%
%    S0 = the smallest scale of the wavelet.  Default is 2*DT.
%
%    J1 = the # of scales minus one. Scales range from S0 up to S0*2^(J1*DJ),
%        to give a total of (J1+1) scales. Default is J1 = (LOG2(N DT/S0))/DJ.
%
%    MOTHER = the mother wavelet function.
%             The choices are 'MORLET', 'PAUL', or 'DOG'
%
%    PARAM = the mother wavelet parameter.
%            For 'MORLET' this is k0 (wavenumber), default is 6.
%            For 'PAUL' this is m (order), default is 4.
%            For 'DOG' this is m (m-th derivative), default is 2.
%
%    PAD = if set to 1 (default is 0), pad time series with enough zeroes to get
%         N up to the next higher power of 2. This prevents wraparound
%         from the end of the time series to the beginning, and also
%         speeds up the FFT's used to do the wavelet transform.
%         This will not eliminate all edge effects (see COI below).
%
% OPTIONAL OUTPUTS:
%
%    PERIOD = the vector of "Fourier" periods (in time units) that corresponds
%           to the SCALEs.
%
%    SCALE = the vector of scale indices, given by S0*2^(J1*DJ), J1=0...J1
%            where J1+1 is the total # of scales.
%
%    FREQ = The vector of "Fourier" frequencies (Hz) converted from scales
%
%    COI = if specified, then return the Cone-of-Influence, which is a vector
%        of N points that contains the maximum period of useful information
%        at that particular time.
%        Periods greater than this are subject to edge effects.
%        This can be used to plot COI lines on a contour plot by doing:
%
%              contour(time,log(period),log(power))
%              plot(time,log(coi),'k')
%
%----------------------------------------------------------------------------
function [cfs,period,scale,freq,coi,wavelet] = ...
	wavelet(Y,fs,no,vpo,s0,mother,param,pad, fractional_len);

if (nargin < 8), pad = -1;, end
if (nargin < 7), param = -1;, end
if (nargin < 6), mother = -1;, end
if (nargin < 5), s0 = -1;, end
if (nargin < 4), vpo = -1;, end
if (nargin < 3), no = -1;, end
if (nargin < 2)
	error('Must input a vector Y and sampling frequency Fs')
end

N = length(Y);

if (no == -1), no = 7;, end
if (vpo == -1), vpo = 4;, end
if (s0 == -1), s0 = 2/fs;, end
if (mother == -1), mother = 'MORLET';, end

%% Construct time series to analyze, pad if necessary
% x(1:n1) = Y - mean(Y);
% if (pad == 1)
% 	base2 = fix(log(n1)/log(2) + 0.4999);   % power of 2 nearest to N
% 	x = [x,zeros(1,2^(base2+1)-n1)];
% end

%x(1:N) = Y - mean(Y);
x(1:N) = Y;
n = length(x);

%% Compute FFT of the (padded) time series
% fft_o = fft(x);    % [Eqn(3)]
x_i = complex(x, zeros(1,N));
fft_o = fft_frac(x_i, N, N, fractional_len);

%% Write output of fft module to file
fft_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_re.txt";
fft_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_im.txt";

fp = fopen(fft_re_filename, 'w');
if(fp == -1)
    error("Couldn't open file: %s", fft_re_filename);
end
fprintf(fp, "%s", regexprep(num2str(real(fft_o)),'\s+','\n'));
fclose(fp);

fp = fopen(fft_im_filename, 'w');
if(fp == -1)
    error("Couldn't open file: %s", fft_im_filename);
end
fprintf(fp, "%s", regexprep(num2str(imag(fft_o)),'\s+','\n'));
fclose(fp);

%% Construct wavenumber array used in transform [Eqn(5)]
% k represents w
k = 1:fix(n/2);
multiplier = ((2.*(pi*fs))/n);
k = k.*multiplier;
k = [0., k, -k(fix((n-1)/2):-1:1)];

%% Construct SCALE array & empty PERIOD & WAVE arrays
J1 = no*vpo;

a0 = 2^(1/vpo);
ind = 0:(J1-1);
scale = s0*(a0.^ind);

period = scale;        % declare the period array
cfs = zeros(J1-1,n);  % declare the coeficients array
cfs = cfs + 1i*cfs;  % make it complex

wavelet = zeros(J1-1,n);  % declare the wavelet array
% wavelet = wavelet + 1i*wavelet;  % make it complex

%% Write ouput of mul module to file
mul_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_re.txt";
mul_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_im.txt";

fp_re = fopen(mul_re_filename, 'w');
if(fp_re == -1)
    error("Couldn't open file: %s", mul_re_filename);
end

fp_im = fopen(mul_im_filename, 'w');
if(fp_im == -1)
    error("Couldn't open file: %s", mul_im_filename);
end

%% Write ouput of ifft module to file
ifft_re_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_re.txt";
ifft_im_filename = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_im.txt";

fp_ifft_re = fopen(ifft_re_filename, 'w');
if(fp_ifft_re == -1)
    error("Couldn't open file: %s", ifft_re_filename);
end

fp_ifft_im = fopen(ifft_im_filename, 'w');
if(fp_ifft_im == -1)
    error("Couldn't open file: %s", ifft_im_filename);
end

%% Loop through all scales and compute transform
for j = 1:J1
	[daughter,fourier_factor,e_folding,dofmin] = wave_bases(mother, k, scale(j), param, fs);
    daughter = fix(daughter * 2^fractional_len);
    % daughter = fix(2 * 2^fractional_len);
    wavelet(j,:) = daughter;
    mul = fft_o.*daughter;
    
    % print re output of mul to file
    fprintf(fp_re, "%s", regexprep(num2str(real(mul)),'\s+','\n'));
    fprintf(fp_re, "\n");
    
    % print im output of mul to file
    fprintf(fp_im, "%s", regexprep(num2str(imag(mul)),'\s+','\n'));
    fprintf(fp_im, "\n");

    mul = fix(mul / 128);
        
    cfs(j,:) = ifft_frac(mul, N, N, fractional_len);  % wavelet transform[Eqn(4)]
    
    % print re output of ifft to file
    fprintf(fp_ifft_re, "%s", regexprep(num2str(real(cfs(j,:))),'\s+','\n'));
    fprintf(fp_ifft_re, "\n");
    
    % print im output of ifft to file
    fprintf(fp_ifft_im, "%s", regexprep(num2str(imag(cfs(j,:))),'\s+','\n'));
    fprintf(fp_ifft_im, "\n");

end

% close files of ouput of mul module 
fclose(fp_ifft_re);
fclose(fp_ifft_im);

fclose(fp_im);
fclose(fp_re);

freq = 1./(fourier_factor.*scale);   % frequency conversion
period = 1./freq;

e_folding = e_folding*scale;         % COI [Sec.3g]
L = min(floor(N/2), e_folding);
R = max(ceil(N/2), N - e_folding);
coi = [L(:), R(:)];

%cfs = cfs(:,1:n1);  % get rid of padding before returning

return

% end of code

