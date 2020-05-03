=begin
# Problem
  # inputs
    String of digits 
    Input can have '+', '-', or no prefix
    assume valid input
  # outputs 
    returns corresponding number as an integer.
  # rules
    '+' or no prefix returns positive number, '-' negative
    no use of standard Ruby conversion methods, e.g. String#to_i, Integer()
    can use the string_to_integer method from the previous lesson

# Example / Test Case
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

# Data Structure 
  strings input
  numbers converted from strings, potentially with preceding '+', '-'

# Algorithm
  same as previous, but add methods to:
  add leading + or minus to hash as value 0
  if 0 leading, remove it with Array#shift
  if minus, convert string to negative number

# Code
# def string_to_signed_integer(num_chars)
#   hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
#           "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "+" => 0, "-" => 0 }
  
#   num_chars_array = num_chars.chars
#   integer_array = num_chars_array.map { |char| hash[char] }
#   # p integer_array 
  
#   integer = 0
#   integer_array.shift if integer_array[0] == 0
#   for i in 1..(integer_array.length)
#     integer += (integer_array[i-1]*(10**(integer_array.length-i)))
#     p integer
#   end
  
#   if num_chars_array[0] == "-"
#     -integer
#   else
#     integer
#   end
# end

# string_to_signed_integer('+100') == 100

# Refactor to 
    get hash out of method, make constant
    remove leading 0 in separate method
    calculate integer in separate method
    check if integer negative in separate method
=end

# Code
CONVERSION_HASH = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
"5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "+" => 0, "-" => 0 }

def remove_leading_0(array)
  array.shift if array[0] == 0
end

def calculate_integer(array)
  int = 0
  for i in 1..(array.length)
    int += (array[i-1]*(10**(array.length-i)))
  end
  int
end

def final_integer(integer, array)
  if array[0] == "-"
    -integer
  else
    integer
  end
end

def string_to_signed_integer(num_chars)
  num_chars_array = num_chars.chars
  integer_array   = num_chars_array.map { |char| CONVERSION_HASH[char] }
  
  remove_leading_0(integer_array)

  absolute_integer = calculate_integer(integer_array)
  final_integer(absolute_integer, num_chars_array)
end

string_to_signed_integer('+100') == 100
string_to_signed_integer('-570') == -570
string_to_signed_integer('4321') == 4321
