arr = input('Enter a numeric array in []: ');
count_pos = 0;
count_neg = 0;
count_zero = 0;
count_even = 0;
count_odd = 0;
sum_pos = 0;
sum_neg = 0;

for i = 1:length(arr)
    if arr(i) > 0
        count_pos = count_pos + 1;
        sum_pos = sum_pos + arr(i);
    elseif arr(i) < 0
        count_neg = count_neg + 1;
        sum_neg = sum_neg + arr(i);
    else
        count_zero = count_zero + 1;
    end

    if arr(i) >= 0
        if mod(arr(i), 2) == 0
            count_even = count_even + 1;
        else
            count_odd = count_odd + 1;
        end
    end
end

if count_pos >= count_neg && count_pos >= count_zero
    max= 'Positive';
elseif count_neg >= count_pos && count_neg >= count_zero
    max='Negative';
else
    max='Zero';
end

fprintf('Positive Values Count: %d\n', count_pos);
fprintf('Negative Values Count: %d\n', count_neg);
fprintf('Zero Values Count    : %d\n', count_zero);
fprintf('Even Integers Count  : %d\n', count_even);
fprintf('Odd Integers Count   : %d\n', count_odd);
fprintf('Sum of Positive Values: %g\n', sum_pos);
fprintf('Sum of Negative Values: %g\n', sum_neg);
fprintf('Highest Count Category: %s\n', max);

fileID = fopen('output.txt', 'w');
fprintf(fileID, 'Positive Values Count: %d\n', count_pos);
fprintf(fileID, 'Negative Values Count: %d\n', count_neg);
fprintf(fileID, 'Zero Values Count    : %d\n', count_zero);
fprintf(fileID, 'Even Integers Count  : %d\n', count_even);
fprintf(fileID, 'Odd Integers Count   : %d\n', count_odd);
fprintf(fileID, 'Sum of Positive Values: %g\n', sum_pos);
fprintf(fileID, 'Sum of Negative Values: %g\n', sum_neg);
fprintf(fileID, 'Highest Count Category: %s\n', max);

fclose(fileID);

disp('Results successfully saved to output.txt');
