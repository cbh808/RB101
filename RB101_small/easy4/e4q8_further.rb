=begin
# Problem
refactor LS solution to string_to_signed_integer method
so that string_to_integer & string[1..-1] called only once

string[1..-1]:
related to whether or not '-' or '+'
if string[0] == '-' or '+'
  string = string[1..-1]

string_to_integer called in every case:
only '-' causes different calculation = * -1

# Algorithm change
take out '-' and '+' from hash & corresponding method 'remove_leading_0' & 
refactor solution to follow different approach (sign handled in 1st method call)
=end

# Code
CONVERSION_HASH = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
"5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

def calculate_integer(array)
  int = 0
  for i in 1..(array.length)
    int += (array[i-1]*(10**(array.length-i)))
  end
  int
end

def string_to_integer(num_chars)
  num_chars_array = num_chars.chars
  integer_array = num_chars_array.map { |char| CONVERSION_HASH[char] }
  calculate_integer(integer_array)
end

def string_to_signed_integer(string)
  string[0] == '-'? b = -1 : b = 1
  string = string[1..-1] if (string[0] == '+' || string[0] == '-')
  b * string_to_integer(string)
end

p string_to_signed_integer('+100') == 100
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('4321') == 4321

