fid_1 = fopen('matrix.txt', 'r');

if fid_1 == -1
    fprintf('Error: matrix.txt file can not open!\n');
else
    rows = 3;
    cols = 4;

    data = fscanf(fid_1, '%f', [cols, rows]);
    fclose(fid_1);

    A = data';

    min_val = A(1, 1);
    min_row = 1;
    min_col = 1;

    max_val = A(1, 1);
    max_row = 1;
    max_col = 1;

    for i = 1:rows
        for j = 1:cols
            if A(i, j) < min_val
                min_val = A(i, j);
                min_row = i;
                min_col = j;
            end

            if A(i, j) > max_val
                max_val = A(i, j);
                max_row = i;
                max_col = j;
            end
        end
    end

    row_sums = zeros(rows, 1);
    highest_sum = -Inf;
    best_row = 1;

    for i = 1:rows
        current_sum = 0;
        for j = 1:cols
            current_sum = current_sum + A(i, j);
        end
        row_sums(i) = current_sum;

        if current_sum > highest_sum
            highest_sum = current_sum;
            best_row = i;
        end
    end

    fid_2 = fopen('output.txt', 'w');

    for i = 1:rows
        for j = 1:cols
            fprintf('%g\t', A(i, j));
            fprintf(fid_2, '%g\t', A(i, j));
        end
        fprintf('\n');
        fprintf(fid_2, '\n');
    end


    fprintf(fid_2, 'Minimum Value : %g at Position (%d, %d)\n', min_val, min_row, min_col);

    fprintf(fid_2, 'Maximum Value : %g at Position (%d, %d)\n', max_val, max_row, max_col);

    for i = 1:rows
        fprintf(fid_2, 'Row %d Sum : %g\n', i, row_sums(i));
    end

    fprintf(fid_2, '\nHighest Row Sum : %g (Row %d)\n', highest_sum, best_row);

    fclose(fid_2);
    fprintf('\nAnalysis saved to output.txt\n');
end
