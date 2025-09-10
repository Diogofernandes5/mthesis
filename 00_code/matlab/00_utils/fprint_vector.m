function fprint_vector(vect, leny, filename, mode)
    % Open the file
    fp = fopen(filename, mode);
    if fp == -1
        error("Couldn't open file: %s", filename);
    end

    % Convert the matrix to a string with newline-separated rows
    % Each row is space-separated integers
    data_str = sprintf('%d\n', vect.');  % Transpose to write row-wise

    % Write the entire string to the file
    fprintf(fp, '%s', data_str);

    % Close the file
    fclose(fp);
end


% function fprint_vector(vect, leny, filename, mode)
% 
% fp = fopen(filename, mode);
% if(fp == -1)
%     error("Couldn't open file: %s", filename);
% end
% 
% for i=1:leny
%     fprintf(fp, "%s\n", regexprep(num2str(vect(i,:), '%d\n'),'\s+','\n'));
%     % hexa = dec2hex(vect(i,:));
%     % fprintf(fp, "%s\n", dec2hex(vect(i,:)));
%     fprintf(fp, "\n");
% end
% 
% fclose(fp);
% 
% end


