matrix = input('Enter a matrix (e.g.: [-10 -5 -8; -20 -3 -15]): ');
[rows, cols] = size(matrix);
max_val = matrix(1, 1);
max_row = 1;
max_col = 1;

for i = 1:rows
    for j = 1:cols
        if matrix(i, j) > max_val
            max_val = matrix(i, j);
            max_row = i;
            max_col = j;
        end
    end
end

fid = fopen('output.txt', 'w');
fprintf(fid, 'Maximum Element: %d\n', max_val);
fprintf(fid, '1-Based Position: Row %d, Column %d\n', max_row, max_col);
fclose(fid);

disp('Results successfully saved to output.txt');
