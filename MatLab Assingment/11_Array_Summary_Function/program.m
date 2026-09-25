arrays = {[10, -5, 60, 0, -15, 55],[-12, -25, -3, -8, -220]};

fid = fopen('output.txt', 'w');
for k = 1:length(arrays)
    arr = arrays{k};
    fprintf(fid, 'Test Case %d Input Array: [ ', k);
    for i = 1:length(arr)
        fprintf('%d ', arr(i));
        fprintf(fid, '%d ', arr(i));
    end
    fprintf(fid, ']\n');
    [total, average, min_val, max_val] = arraySummary(arr);

    fprintf(fid, 'Total   : %d\n', total);
    fprintf(fid, 'Average : %.2f\n', average);
    fprintf(fid, 'Minimum : %d\n', min_val);
    fprintf(fid, 'Maximum : %d\n\n', max_val);
end
fclose(fid);
fprintf('\nSaved to output.txt\n');
