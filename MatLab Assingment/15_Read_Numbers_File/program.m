fid_1 = fopen('input.txt', 'r');

if fid_1 == -1
    fprintf('Error: input.txt file can not open!\n');
else
    data = fscanf(fid_1, '%f');
    fclose(fid_1);

    n = length(data);

    total = 0;
    min_val = data(1);
    max_val = data(1);
    pos_count = 0;
    neg_count = 0;
    zero_count = 0;

    for i = 1:n
        val = data(i);

        total = total + val;

        if val > min_val
        else
            min_val = val;
        end

        if val > max_val
            max_val = val;
        end

        if val > 0
            pos_count = pos_count + 1;
        elseif val < 0
            neg_count = neg_count + 1;
        else
            zero_count = zero_count + 1;
        end
    end

    average = total / n;

    fid_2 = fopen('output.txt', 'w');

    for i = 1:n
        fprintf(fid_2, '%d \n', data(i));
    end
    fprintf(fid_2, 'Total Elements : %d\n', n);
    fprintf(fid_2, 'Positive Count : %d\n', pos_count);
    fprintf(fid_2, 'Negative Count : %d\n', neg_count);
    fprintf(fid_2, 'Zero Count     : %d\n', zero_count);
    fprintf(fid_2, 'Sum            : %d\n', total);
    fprintf(fid_2, 'Average        : %.2f\n', average);
    fprintf(fid_2, 'Minimum        : %d\n', min_val);
    fprintf(fid_2, 'Maximum        : %d\n', max_val);
    fclose(fid_2);
    fprintf('\nAnalysis successfully saved to output.txt\n');
end
