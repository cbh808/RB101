=begin
# Problem
# inputs
  0 or positive integer
  assume correct input given
# outputs 
  string representation of input number
# rules
  no use of standard conversion methods

# Example / Test Case
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# Data Structure 
  # integers and number 0
  # string

# Algorithm
  # convert number to array of 1-digit numbers
  # map over array, using digits as keys in hash to get chars
=end

# Code
CONVERT_HASH = { 0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
                  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9" }

def integer_to_string(number)
  number_array = number.digits.reverse!
  char_array = number_array.map {|value| CONVERT_HASH[value]}
  char_array.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'