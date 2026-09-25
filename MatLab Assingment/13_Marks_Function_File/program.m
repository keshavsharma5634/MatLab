marks = input('Enter Student Marks: ');
[avg_mark, max_mark, pass_count, fail_count] = analyzeMarks(marks);

fid = fopen('result.txt', 'w');
fprintf('Input Marks: [ ');
fprintf(fid, 'Input Marks: [ ');
for i = 1:length(marks)
    fprintf('%g ', marks(i));
    fprintf(fid, '%g ', marks(i));
end
fprintf(fid, ']\n\n');
fprintf(fid, 'Average Valid Mark : %.2f\n', avg_mark);
fprintf(fid, 'Highest Valid Mark : %g\n', max_mark);
fprintf(fid, 'Pass Count : %d\n', pass_count);
fprintf(fid, 'Fail Count : %d\n', fail_count);

fclose(fid);
fprintf('\nSaved to result.txt\n');
