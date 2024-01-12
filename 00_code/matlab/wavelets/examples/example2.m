%% Example 2: sum of sinusoids
close all;
% create signal
N  = 1024;
fs = 1024;
t  = (0:N-1)/fs;
f1 = 50; f2 = 150; f3 = 250;
x  = sin(2*pi*f1*t) + sin(2*pi*f2*t) + sin(2*pi*f3*t);
% add a bit of noise
%x  = x + 0.3*randn(size(x));

% plot signal
hFigSig = figure;
hFigSig.Position(3:4) = [1.5 0.6].*hFigSig.Position(3:4);
plot(t,x);
set(gca,'FontSize', 12);
xlabel('Time','FontSize',13);
ylabel('Amplitude','FontSize',13);

% FFT-based wavelets, sampling in frequency
opts = struct('type','fft','fs',fs,'sampling','freq','plot',1);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('FFT-based CWT, linear frequencies','FontSize',13);

% specify min frequency
opts = setfield(opts,'fmin',30);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('Min. frequency = 30 Hz','FontSize',13);

% specify mac frequency
opts = setfield(opts,'fmax',350);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('Min. frequency = 30 Hz, max. frequency = 350 Hz','FontSize',13);

% change frequency step
fprintf('Frequency step before: %.2f Hz\n', f_wt(2)-f_wt(1));
opts = setfield(opts,'fstep',3);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('Min. frequency = 30 Hz, max. frequency = 350 Hz, \Deltaf = 3 Hz',...
    'FontSize',13);
fprintf('Frequency step now: %.2f Hz\n', f_wt(2)-f_wt(1));

% the same boundaries but with non-linear frequency
opts.sampling = 'scales';
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('Non-linear freq., min. frequency = 30 Hz, max. frequency = 350 Hz',...
    'FontSize',13);

% normalize by scale
opts = setfield(opts,'norm',1);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('Normalize by scale', 'FontSize',13);

% decrease overlap between scales
opts = setfield(opts,'chi',65);
[WT,f_wt,t_wt,coi,scales] = wt(x,opts);
title('Overlap between scales is 65%', 'FontSize',13);
