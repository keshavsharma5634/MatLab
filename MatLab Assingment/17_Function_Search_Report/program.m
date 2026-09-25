fid_1 = fopen('numbers.txt', 'r');

if fid_1 == -1
    fprintf('Error: numbers.txt file can not open!\n');
else
    arr = fscanf(fid_1, '%f');
    fclose(fid_1);

    target = 42;

    [idx, total_count] = findValue(arr, target);

    fid_2 = fopen('output.txt', 'w');

    fprintf('Array: [ ');
    fprintf(fid_2, 'Array: [ ');
    for i = 1:length(arr)
        fprintf(fid_2, '%g ', arr(i));
    end
    fprintf(fid_2, ']\n\n');

    fprintf(fid_2, 'Target Value     : %g\n', target);

    fprintf(fid_2, 'First Index      : %d\n', idx);

    fprintf(fid_2, 'Total Occurrence : %d\n', total_count);

    fclose(fid_2);
    fprintf('\nSearch results saved to output.txt\n');
end
