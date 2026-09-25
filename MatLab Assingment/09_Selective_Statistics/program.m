arr = input('Enter a numeric array in []: ');
count_pos = 0;
sum_pos = 0;

for i = 1:length(arr)
    if arr(i) <= 0
        continue;
    end
    count_pos = count_pos + 1;
    sum_pos = sum_pos + arr(i);
end

fid = fopen('output.txt', 'w');
if count_pos > 0
    avg_pos = sum_pos / count_pos;
    fprintf(fid, 'Count of Positive Values: %d\n', count_pos);
    fprintf(fid, 'Sum of Positive Values  : %d\n', sum_pos);
    fprintf(fid, 'Average of Positive Values: %.2f\n', avg_pos);
else
    msg = 'No positive values exist in the given array.';
    fprintf('%s\n', msg);
    fprintf(fid, '%s\n', msg);
end
fclose(fid);
disp('Saved to output.txt');
