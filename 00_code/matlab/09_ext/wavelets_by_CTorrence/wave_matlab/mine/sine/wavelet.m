%WAVELET  1D Wavelet transform with optional singificance testing
%
%   [WAVE,PERIOD,SCALE,COI] = wavelet(Y,DT,PAD,DJ,S0,J1,MOTHER,PARAM)
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
%    WAVE is the WAVELET transform of Y. This is a complex array
%    of dimensions (N,J1+1). FLOAT(WAVE) gives the WAVELET amplitude,
%    ATAN(IMAGINARY(WAVE),FLOAT(WAVE) gives the WAVELET phase.
%    The WAVELET power spectrum is ABS(WAVE)^2.
%    Its units are sigma^2 (the time series variance).
%
%
% OPTIONAL INPUTS:
% 
% *** Note *** setting any of the following to -1 will cause the default
%               value to be used.
%
%    PAD = if set to 1 (default is 0), pad time series with enough zeroes to get
%         N up to the next higher power of 2. This prevents wraparound
%         from the end of the time series to the beginning, and also
%         speeds up the FFT's used to do the wavelet transform.
%         This will not eliminate all edge effects (see COI below).
%
%    DJ = the spacing between discrete scales. Default is 0.25.
%         A smaller # will give better scale resolution, but be slower to plot.
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
%
% OPTIONAL OUTPUTS:
%
%    PERIOD = the vector of "Fourier" periods (in time units) that corresponds
%           to the SCALEs.
%
%    SCALE = the vector of scale indices, given by S0*2^(j*DJ), j=0...J1
%            where J1+1 is the total # of scales.
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
function [wave,period,scale,freq,coi] = ...
	wavelet(Y,fs,pad,no,vpo,s0,J1,mother,param);

if (nargin < 9), param = -1;, end
if (nargin < 8), mother = -1;, end
if (nargin < 5), s0 = -1;, end
if (nargin < 3), pad = 0;, end
if (nargin < 2)
	error('Must input a vector Y and sampling time DT')
end

N = length(Y);

if (s0 == -1), s0=2/fs;, end
if (mother == -1), mother = 'MORLET';, end

%....construct time series to analyze, pad if necessary
% x(1:n1) = Y - mean(Y);
% if (pad == 1)
% 	base2 = fix(log(n1)/log(2) + 0.4999);   % power of 2 nearest to N
% 	x = [x,zeros(1,2^(base2+1)-n1)];
% end
x = Y;
n = length(x);

%....construct wavenumber array used in transform [Eqn(5)]
k = [1:fix(n/2)];
multiplier = ((2.*(pi*fs))/n);
k = k.*multiplier;
k = [0., k, -k(fix((n-1)/2):-1:1)];

%....compute FFT of the (padded) time series
f = fft(x);    % [Eqn(3)]

%....construct SCALE array & empty PERIOD & WAVE arrays
a0 = 2^(1/vpo);
ind = 0:J1-1;
scale = s0*(a0.^ind);

period = scale;
wave = zeros(J1-1,n);  % define the wavelet array
wave = wave + i*wave;  % make it complex

% loop through all scales and compute transform
for a1 = 1:J1
	[daughter,fourier_factor,coi,dofmin] = wave_bases(mother, k, scale(a1), param);
    mul = f.*daughter;
	wave(a1,:) = ifft(mul);  % wavelet transform[Eqn(4)]
end

freq = 1./(fourier_factor.*scale);
period = 1./freq;
coi = coi*[1E-5,1:((N+1)/2-1),fliplr((1:(N/2-1))),1E-5]/fs;  % COI [Sec.3g]
%wave = wave(:,1:n1);  % get rid of padding before returning

return

% end of code

