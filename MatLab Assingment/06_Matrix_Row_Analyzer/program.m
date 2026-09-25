matrix = input('Enter a matrixrix (e.g., [1 2 3; 4 5 6; 7 8 9]): ');
[rows, cols] = size(matrix);
max_sum = -inf;
max_row_num = 0;

fileID = fopen('output.txt', 'w');
for i = 1:rows
    row_sum = 0;
    row_max = matrix(i, 1);

    for j = 1:cols
        val = matrix(i, j);
        row_sum = row_sum + val;

        if val > row_max
            row_max = val;
        end
    end


    row_avg = row_sum / cols;
    fprintf('Row %d: Sum: %d, Average: %d, Maximum: %d\n', i, row_sum, row_avg, row_max);
    fprintf(fileID, 'Row %d: Sum: %d, Average: %d, Maximum: %d\n', i, row_sum, row_avg, row_max);

    if row_sum > max_sum
        max_sum = row_sum;
        max_row_num = i;
    end
end

fprintf('\nRow with Highest Row-Sum is Row: %d \n', max_row_num);
fprintf(fileID, '\nRow with Highest Row-Sum is Row: %d\n', max_row_num);

fclose(fileID);
disp('Results successfully saved to output.txt');
