=begin
# Problem
Expand previous problem to work with signed integers, i.e.`+` or `-`
  # inputs
    String of digits
    Input can have prefix of sign '+', '-', or no prefix
    assume valid input
  # outputs
    returns number as an integer
  # rules
    '+' or no prefix returns positive number, '-' returns negative number
    no use of standard Ruby conversion methods, e.g. String#to_i, Integer()
    can use the string_to_integer method from the previous lesson

# Example / Test Case
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

# Data Structure
  input
  strings representing numbers, potentially with preceding '+', '-'

# Algorithm
  Use previous HASH constant of character keys / integer values
  
  Define method string_to_signed_integer that takes one arg (string)
  Initialize local variable `prefix` and assign value of 1
  Use conditional to determine if string has '-' prefix
  change `prefix` to -1 if prefix == '-'
  Use conditional to determine if string has '-' or '+' prefix
  remove prefix if exists
  call string_to_integer on remaining string
  

  for return value, multiply result of string_to_integer by `prefix`


# Code
=end

HASH = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
          "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def string_to_signed_integer(string)
  prefix_value = 1

  if string[0] == '-'
    prefix_value *= -1
  end
  
  if string[0] == '-' || string[0] == '+'
    string[0] = ''
  end
  
  string_to_integer(string) * prefix_value
end
  
def string_to_integer(string)
  sum = 0
  digits = []
    string.each_char do |char|
      digits.unshift(HASH[char])
    end
    (0...digits.size).each do |idx|
      sum += digits[idx]*10**idx
    end
  sum
end

p string_to_signed_integer('+100') == 100
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('4321') == 4321



=begin
#previous Code Algorithm
  # use previous code for converstion
  # add leading + or minus to hash as value 0
  # if 0 leading, remove it with Array#shift
  # if minus, convert string to negative number

# Refactor to 
    get hash out of method, make constant
    remove leading 0 in separate method
    calculate integer in separate method
    check if integer negative in separate method
=end

# HASH = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
# "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "+" => 0, "-" => 0 }

# def remove_leading_0(array)
#   array.shift if array[0] == 0
# end

# def calculate_integer(array)
#   int = 0
#   for i in 1..(array.length)
#     int += (array[i-1]*(10**(array.length-i)))
#   end
#   int
# end

# def final_integer(integer, array)
#   if array[0] == "-"
#     -integer
#   else
#     integer
#   end
# end

# def string_to_signed_integer(num_chars)
#   num_chars_array = num_chars.chars
#   integer_array   = num_chars_array.map { |char| HASH[char] }

#   remove_leading_0(integer_array)

#   absolute_integer = calculate_integer(integer_array)
#   final_integer(absolute_integer, num_chars_array)
# end

# string_to_signed_integer('+100') == 100
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('4321') == 4321
