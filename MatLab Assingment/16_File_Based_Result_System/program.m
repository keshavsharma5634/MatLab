fid_1 = fopen('marks.txt', 'r');
if fid_1 == -1
    fprintf('Error: marks.txt file nahi khul saki!\n');
else
    data = fscanf(fid_1, '%f', [3, Inf]);
    fclose(fid_1);
    data = data';
    total_students = size(data, 1);
    fid_2 = fopen('result.txt', 'w');

    fprintf(fid_2, 'Student | Sub1 | Sub2 | Sub3 | Total | Average | Status\n');

    for i = 1:total_students
        sub1 = data(i, 1);
        sub2 = data(i, 2);
        sub3 = data(i, 3);

        total = sub1 + sub2 + sub3;
        avg = total / 3;

        if avg >= 40
            status = 'Pass';
        else
            status = 'Fail';
        end

        fprintf(fid_2, 'Student %d | %g | %g | %g | %g | %.2f | %s\n', i, sub1, sub2, sub3, total, avg, status);
    end
    fclose(fid_2);
    fprintf('\nReport successfully written to result.txt\n');
end
