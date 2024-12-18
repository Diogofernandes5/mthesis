%% CWT Test Example Matlab script for WAVELET, using NINO3 SST dataset
%
% Written oct 2023 by D. Fernandes
%
clear all; 

load 'sst_nino3.dat'   % input SST time series
x = sst_nino3;

variance = std(x)^2;
x = (x - mean(x))/sqrt(variance);

%% Computation
n = length(x);

fs = 4;

dt = 1/fs;
pad = 0;                            % pad the time series with zeros (recommended)
t = [0:length(x)-1]*dt + 1871.0 ;   % construct time array

omega = 6.;                          % wavelet parameter
%fc = omega/(2*pi);                  % central frequency of wavelet

no = 8;                             % number of octaves - defines the "zoom". if fs
                                        % with a bigger fs, "no" needs to be greater to 
                                        % include all frequencys
vpo = 64;                           % voices per octave

%s0 = fc/pi;
s0_ind = 6;                        % 0.2 for no=16            
s0 = s0_ind*dt;

j1 = no*vpo;
mother = 'Morlet';

%% Wavelet transform:
[wave,period,scale,freq,coi] = wavelet(x, fs, no, vpo, s0, mother, omega, pad)

%% Plot the scalogram
figure;
contourf(t, freq, abs(wave), 'LineColor', 'none');

% colorbar
colormap(jet);
cl = colorbar;
cl.Label.String = "Magnitude";

title("Scalogram and Instantaneous Frequencies")
xlabel("Time (Year)");
ylabel("Period (Years)");

hold on
% cone-of-influence, anything "below" is dubious
L = coi(:,1); R = coi(:,2);
L = [L(1); L]/fs+1871;
R = [R(1); R]/fs+1871;

plot(L,[freq(1) freq],'--w','linewidth',1.5);    % print left side
plot(R,[freq(1) freq],'--w','linewidth',1.5);   % print right side

%% End of code
