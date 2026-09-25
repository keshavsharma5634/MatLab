matrix_1 = input('Enter Matrix 1 (e.g.: [1 2; 3 4]): ');
matrix_2 = input('Enter Matrix 2 (e.g.: [5 6; 7 8]): ');

[r1, c1] = size(matrix_1);
[r2, c2] = size(matrix_2);

fid = fopen('output.txt', 'w');

if c1 ~= r2
    fprintf(fid, 'Multiplication not possible: Columns of Matrix 1 (%d) must equal Rows of Matrix 2 (%d).\n', c1, r2);
else
    for i = 1:r1
        for j = 1:c2
            sum_val = 0;
            for k = 1:c1
                sum_val = sum_val + matrix_1(i, k) * matrix_2(k, j);
            end
            manual(i, j) = sum_val;
        end
    end

    in_built_funx = matrix_1 * matrix_2;

    is_equal = 1;
    for i = 1:r1
        for j = 1:c2
            if manual(i, j) ~= in_built_funx(i, j)
                is_equal = 0;
            end
        end
    end
    fprintf(fid, 'Manual Result:\n');
    for i = 1:r1
        for j = 1:c2
            fprintf(fid, '%d\t', manual(i, j));
        end
        fprintf(fid, '\n');
    end

    fprintf(fid, '\nMATLAB Built-in Result:\n');
    for i = 1:r1
        for j = 1:c2
            fprintf(fid, '%d\t', in_built_funx(i, j));
        end
        fprintf(fid, '\n');
    end

    if is_equal == 1
        fprintf(fid, '\nMatch Status: Both results MATCH perfectly!\n');
    else
        fprintf(fid, '\nMatch Status: Results DO NOT match.\n');
    end
end

fclose(fid);
disp('Saved to output.txt');
