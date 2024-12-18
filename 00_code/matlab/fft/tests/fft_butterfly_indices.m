function pairs = fft_butterfly_indices(N)
    % N: Number of points in the FFT (must be a power of 2)
    % pairs: Cell array where each element is a list of index pairs for each stage

    num_stages = log2(N);  % Number of stages in FFT
    pairs = cell(num_stages, 1);  % Cell array to store pairs for each stage

    % Loop over each stage
    for stage = 1:num_stages
        % Distance between elements in each butterfly pair
        distance = 2^(stage - 1);
        
        % Create an empty array to store pairs for this stage
        stage_pairs = [];
        
        % Loop through groups of size 2^stage
        for k = 0:(N / (2^stage) - 1)
            group_start = k * 2^stage;
            
            % Create butterfly pairs within the group
            for i = 0:(distance - 1)
                idx1 = group_start + i;  % MATLAB uses 1-based indexing
                idx2 = idx1 + distance;
                stage_pairs = [stage_pairs; idx1, idx2];
            end
        end
        
        % Store the pairs for this stage
        pairs{stage} = stage_pairs;
    end
end