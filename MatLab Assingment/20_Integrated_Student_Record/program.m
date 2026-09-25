fid_1 = fopen('student_marks.txt', 'r');
if fid_1 == -1
    fprintf('Error: student_marks.txt file can not open!\n');
else
    marks = fscanf(fid_1, '%f');
    fclose(fid_1);

    total_entries = length(marks);

    [valid_count, total, avg, max_val, min_val, pass_count, fail_count, overall_status] = resultSummary(marks);

    fid_2 = fopen('final_report.txt', 'w');

    if fid_2 == -1
        fprintf('Error: final_report.txt file not create/write!\n');
    else
        fprintf(fid_2, '\nRaw Input Marks:\n');

        for i = 1:total_entries
            fprintf('%g ', marks(i));
            fprintf(fid_2, '%g ', marks(i));
        end
        fprintf(fid_2, 'Total Entries Read : %d\n', total_entries);
        fprintf(fid_2, 'Valid Marks Count  : %d\n', valid_count);
        fprintf(fid_2, 'Invalid Entries    : %d\n', total_entries - valid_count);
        fprintf(fid_2, 'Total Valid Marks  : %g\n', total);
        fprintf(fid_2, 'Average Mark       : %.2f\n', avg);
        fprintf(fid_2, 'Highest Mark       : %g\n', max_val);
        fprintf(fid_2, 'Lowest Mark        : %g\n', min_val);
        fprintf(fid_2, 'Pass Count         : %d\n', pass_count);
        fprintf(fid_2, 'Fail Count         : %d\n', fail_count);
        fprintf(fid_2, 'Overall Status     : %s\n', overall_status);
        fclose(fid_2);
        fprintf('\nReport successfully generated and saved to final_report.txt\n');
    end
end
