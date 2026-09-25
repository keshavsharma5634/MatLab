fid = fopen('attendance.txt', 'a');

for i = 1:5
    name = input('Enter Student Name: ', 's');
    fprintf('Select Status: 1. Present  2. Absent  3. Late\n');
    choice = input('Enter choice (1-3): ');
    if choice == 1
        status = 'Present';
    elseif choice == 2
        status = 'Absent';
    elseif choice == 3
        status = 'Late';
    else
        fprintf('Invalid choice! Setting to Absent.\n');
        status = 'Absent';
    end

    fprintf(fid, 'Name: %s | Status: %s\n', name, status);
    fprintf('Record saved!\n\n');
end

fclose(fid);
fprintf('All 5 records saved to attendance.txt\n');
