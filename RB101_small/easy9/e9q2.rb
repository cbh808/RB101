=begin
# inputs:
integer
# outputs:
returns 2 times the number provided as an argument
returned as-is if double number
# rules:
double number has even number of digits and left-side digits are exactly the same as right-side digits
no numbers with leading zeros
# Example / Test Case:
see code

# Data Structures:
input integer as arg
output integer

# Algorithm:
set constant equal to array of digits 0..9
define empty string
convert input into to_s and iterate over selecting out digits and adding to new string
determine string size / 2
if size even AND string[0..midpoint-1] == string[midpoint..-1] return string.to_i
else return string.to_i * 2 
=end 
DIGITS_S = %w(0 1 2 3 4 5 6 7 8 9)

def twice(integer)
  string_number = get_string_number(integer)
  midpoint = string_number.size / 2
  
  if string_number.size.even? && 
    (string_number[0..midpoint-1] == string_number[midpoint..-1])
    string_number.to_i
  else
    string_number.to_i * 2
  end
end

def get_string_number(int)
  string_number = ''
  int.to_s.each_char do |char|
    string_number << char if DIGITS_S.include?(char)
  end
  string_number
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10