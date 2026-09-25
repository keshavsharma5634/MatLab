num = input('Enter a Number: ');
temp = num;
num_digits = 0;
sum_digits = 0;
count_even = 0;
count_odd = 0;
rev_num = 0;
if num < 0
  disp('Number is Negative');
  fid = fopen('output.txt', 'w');
  fprintf(fid,'Number is Negative');
  fclose(fid)
else
  while temp > 0
    digit = mod(temp, 10);
    num_digits = num_digits + 1;
    sum_digits = sum_digits + digit;
    if mod(digit, 2) == 0
        count_even = count_even + 1;
    else
        count_odd = count_odd + 1;
    end
    rev_num = (rev_num * 10) + digit;
    temp = fix(temp / 10);
   end
   if num == rev_num
    num_palindrome = 'Yes';
   else
    num_palindrome = 'No';
   end

   fprintf('Original Number: %d\n', num);
   fprintf('Number of Digits: %d\n', num_digits);
   fprintf('Sum of Digits: %d\n', sum_digits);
   fprintf('Count of Even Digits: %d\n', count_even);
   fprintf('Count of Odd Digits: %d\n', count_odd);
   fprintf('Reversed Number: %d\n', rev_num);
   fprintf('Is Palindrome: %s\n', num_palindrome);

   fid = fopen('output.txt', 'w');
   fprintf(fid, 'Original Number: %d\n', num);
   fprintf(fid, 'Number of Digits: %d\n', num_digits);
   fprintf(fid, 'Sum of Digits: %d\n', sum_digits);
   fprintf(fid, 'Count of Even Digits: %d\n', count_even);
   fprintf(fid, 'Count of Odd Digits: %d\n', count_odd);
   fprintf(fid, 'Reversed Number: %d\n', rev_num);
   fprintf(fid, 'Is Palindrome: %s\n', num_palindrome);
   fclose(fid);
   disp('Results successfully written to output.txt');
end

