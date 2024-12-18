function fprint_vector(vect, leny, filename, mode)

fp = fopen(filename, mode);
if(fp == -1)
    error("Couldn't open file: %s", filename);
end

for i=1:leny
    fprintf(fp, "%s", regexprep(num2str(vect(i,:)),'\s+','\n'));
    fprintf(fp, "\n");
end

end

