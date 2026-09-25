arr = input('Enter the array in []: ');
search_value = input('Enter the search value: ');
first_pos = 0;
total_count = 0;

for i = 1:length(arr)
    if arr(i) == search_value
        first_pos = i;
        break;
    end
end

for i = 1:length(arr)
    if arr(i) == search_value
        total_count = total_count + 1;
    end
end

fid = fopen('output.txt', 'w');
if first_pos > 0
    fprintf(fid,'Value %d found at first position: %d\n', search_value,first_pos);
    fprintf(fid,'Total occurrences of %d: %d\n', search_value, total_count);

else
    fprintf(fid,'Value %d is absent in the array.\n', search_value);
end
fclose(fileID);
disp('Results successfully saved to output.txt');
