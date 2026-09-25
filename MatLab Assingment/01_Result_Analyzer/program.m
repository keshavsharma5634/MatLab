marks = input('Enter your marks in []:');
valid_marks = [];
invalid_marks = [];
sum =0;
count = 0;
count_fail=0;
count_pass=0;

for i=1: length(marks)
   if marks(i)>=0 && marks(i)<=100
     valid_marks=[valid_marks,marks(i)];
   else
     invalid_marks=[invalid_marks,marks(i)];
   end
end
highest=valid_marks(1);
lowest=valid_marks(1);
for i=1:length(valid_marks)
  if valid_marks(i) >=30
    count_pass = count_pass+1;
  else
    count_fail = count_fail+1;
  endif
  if valid_marks(i)>highest
    highest=valid_marks(i);
  end
  if valid_marks(i)<lowest
    lowest = valid_marks(i);
  endif
  sum = sum+valid_marks(i);
end
avg = sum/length(valid_marks);

fid = fopen('output.txt','w');

fprintf(fid,'Sum: %d \n',sum);
fprintf(fid,'Avrage: %d \n',avg);
fprintf(fid,'Highest: %d \n',highest);
fprintf(fid,'Lowest: %d \n',lowest);
fprintf(fid,'Total Pass Student: %d \n',count_pass);
fprintf(fid,'Total Fail Student: %d',count_fail);
fclose(fid);
disp('File created and saved all Summary');
