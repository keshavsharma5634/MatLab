arr = [52, 63, 96, 100, 74, 85, 29, 30, 74];

n = length(arr);
max_val = -Inf;
second_max = -Inf;

for i = 1:n
    if arr(i) > max_val
        max_val = arr(i);
    end
end

for i = 1:n
    if arr(i) > second_max && arr(i) < max_val
        second_max = arr(i);
    end
end

fid = fopen('output.txt', 'w');

fprintf(fid, 'Input Array: [ ');
for i = 1:n
    fprintf('%d ', arr(i));
    fprintf(fid, '%d ', arr(i));
end
fprintf(fid, ']\n\n');

fprintf(fid, 'Maximum Value        : %d\n', max_val);

if second_max == -Inf
    fprintf(fid, 'Second Distinct Value: Does not exist (All elements are same)\n');
else
    fprintf(fid, 'Second Largest Value : %d\n', second_max);
end

fclose(fid);
fprintf('\nResult saved to output.txt\n');
