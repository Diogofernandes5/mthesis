fractional_len = 10;
f0 = 500;
f1 = 800;

fs = 8000;

N = 1024;
duration = N / fs;
t = 0 : 1/fs : duration-1/fs;

x = sin(2*pi*f0*t) + sin(2*pi*f1*t);
x = fix(x * 2^fractional_len);

x = 1:1:65535;

filepath = "/home/fernandes/thesis/00_code/matlab/01_tests/ddr_writting/";
filename = "brom_vals.txt";

% Open the file
fp = fopen(filepath+filename, 'w');
if fp == -1
    error("Couldn't open file: %s", filename);
end

% Convert the matrix to a string with newline-separated rows
% Each row is space-separated integers
data_str = sprintf('%d\n', x);  % Transpose to write row-wise

% Write the entire string to the file
fprintf(fp, '%s', data_str);

% Close the file
fclose(fp);


cd (filepath);
system("./coe_dump.sh " + filename + " 10");
cd ("..");