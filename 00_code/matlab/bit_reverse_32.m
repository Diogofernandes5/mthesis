function out = bit_reverse_32(in)
    out = uint32(0); % Initialize the output as an unsigned 32-bit integer
    for i = 0:31
        in_binary = dec2bin(in, 3);     % Convert to 3-bit binary string
        out_binary = fliplr(in_binary); % Reverse the binary string
        out = bin2dec(out_binary);      % Convert back to decimal
        out = uint8(out);               % Ensure it's an 8-bit unsigned integer
    end
end