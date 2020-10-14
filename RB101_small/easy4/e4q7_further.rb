=begin
# Written problem statement
Further Exploration
Write a hexadecimal_to_integer method that converts 
a string representing a hexadecimal number to its 
integer value.

# Problem
  # inputs
    # string of hexadecimal number & letter characters
    # assume no bad inputs, i.e. non-numeric or non-hex chars
  # outputs 
    # integer value of original string 'value' in hexadecimal

# Example / Test Case
hexadecimal_to_integer('4D9f') == 19871
hexadecimal_to_integer('570') == 570
hexadecimal_to_integer('0') == 0

# Data Structure 
  # hex string as argument

# Algorithm
  # define method with one string argument
  # use String#hex conversion method to obtain number
=end
# Code easy way 
def hexadecimal_to_integer(num_chars)
  num_chars.hex
end

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('570') == 1392
p hexadecimal_to_integer('0') == 0
puts

# Code adapt base 10 solution, the hex chars added to hash
# base 16 calc in conversion from array to number
def string_to_integer(num_chars)
  hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
          "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
          "a" => 10, "b" => 11, "c" => 12, "d" => 13, 
          "e" => 14, "f" => 15 }
  
  num_chars_array = num_chars.chars
  integer_array = num_chars_array.map { |char| hash[char.downcase] }
  # p integer_array => [4, 3, 2, 1]
  
  integer = 0
  for i in 1..(integer_array.length)
    integer += (integer_array[i-1]*(16**(integer_array.length-i)))
  end
  integer
end

p string_to_integer('4D9f') == 19871
p string_to_integer('570') == 1392
p string_to_integer('0') == 0