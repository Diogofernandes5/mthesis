function [max_error] = rel_error(inputArg1,inputArg2)

len = length(inputArg1);

if(len ~= length(inputArg2) && len ~= 0)
    error('Arg1 and Arg2 must have the same size and different from 0!');
end

max_error = 0;

for i = 1:len
    abs_error = abs(inputArg1(i) - inputArg2(i));

    if(abs_error > max_error)
        max_error = abs_error;
    end
end

max_error = max_error * 100;

fprintf("Max relative error is: %.2f%%\n\r", max_error);

return