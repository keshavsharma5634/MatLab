fid_1 = fopen('transactions.txt', 'r');

if fid_1 == -1
    fprintf('Error: transactions.txt file nahi khul saki!\n');
else
    data = fscanf(fid_1, '%f');
    fclose(fid_1);

    n = length(data);

    total_credits = 0;
    total_debits = 0;
    credit_count = 0;
    debit_count = 0;
    zero_count = 0;
    max_credit = 0;
    max_debit_mag = 0;

    for i = 1:n
        val = data(i);

        if val > 0
            total_credits = total_credits + val;
            credit_count = credit_count + 1;

            if val > max_credit
                max_credit = val;
            end

        elseif val < 0
            total_debits = total_debits + val;
            debit_count = debit_count + 1;

            mag = -val;
            if mag > max_debit_mag
                max_debit_mag = mag;
            end

        else
            zero_count = zero_count + 1;
        end
    end

    net_balance = total_credits + total_debits;

    fid_2 = fopen('output.txt', 'w');
    fprintf(fid_2, 'Total Transactions      : %d\n', n);
    fprintf(fid_2, 'Credit Transactions     : %d\n', credit_count);
    fprintf(fid_2, 'Debit Transactions      : %d\n', debit_count);
    fprintf(fid_2, 'Zero Transactions       : %d\n', zero_count);
    fprintf(fid_2, 'Total Credits Amount    : %g\n', total_credits);
    fprintf(fid_2, 'Total Debits Amount     : %g\n', total_debits);
    fprintf(fid_2, 'Net Balance             : %g\n', net_balance);
    fprintf(fid_2, 'Largest Credit          : %g\n', max_credit);
    fprintf(fid_2, 'Largest Debit Magnitude : %g\n', max_debit_mag);
    fclose(fid_2);
    fprintf('\nSummary saved to output.txt\n');
end
