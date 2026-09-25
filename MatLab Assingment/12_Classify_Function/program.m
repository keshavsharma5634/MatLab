clear; clc;

arr1 = [10, -7, 0, 5, -4, 0, 8, 15];
arr2 = [-3, -10, 1, -14, 0, -9, 2, 7];

[pos1, neg1, zero1, even1, odd1] = classifyArray(arr1);
[pos2, neg2, zero2, even2, odd2] = classifyArray(arr2);

fid = fopen('output.txt', 'w');

fprintf('Array 1: [ ');
fprintf(fid, 'Array 1: [ ');
for i = 1:length(arr1)
    fprintf(fid, '%d ', arr1(i));
end
fprintf(fid, ']\n');

fprintf(fid, 'Array 2: [ ');
for i = 1:length(arr2)
    fprintf(fid, '%d ', arr2(i));
end

fprintf(fid, ']\n\n');
fprintf(fid, 'Metric | Array 1 | Array 2\n');
fprintf(fid, 'Positive Count | %d | %d\n', pos1, pos2);
fprintf(fid, 'Negative Count | %d | %d\n', neg1, neg2);
fprintf(fid, 'Zero Count | %d | %d\n', zero1, zero2);
fprintf(fid, 'Even Count | %d | %d\n', even1, even2);
fprintf(fid, 'Odd Count | %d | %d\n', odd1, odd2);
fclose(fid);
fprintf('\nSaved to output.txt\n');
