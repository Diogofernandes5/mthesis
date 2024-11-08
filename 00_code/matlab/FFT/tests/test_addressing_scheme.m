N = 1024;  % Number of points
pairs = fft_butterfly_indices(N);

for stage = 1:length(pairs)
    fprintf('Stage %d: Pairs\n', stage - 1);
    disp(pairs{stage});
end
