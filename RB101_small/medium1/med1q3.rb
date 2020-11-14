=begin
# inputs:
takes an integer as argument
# outputs:
returns the maximum rotation of that argument.
# rules:
 use the rotate_rightmost_digits from previous exercise

# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:
define method with args (integer)
init loc var couter and assign size of string created from integer
loop from 0 up to size of array -1 (not necessary to rotate number of size 1)
  pass in integer and (size - counter) value to rotate_rightmost_digits method
  reassign result to integer
  break if i >= size
Join final array and convert to int
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  char_array = integer.to_s.chars
  char_array[-n..-1] = rotate_array(char_array[-n..-1])
  char_array.join.to_i
end

def max_rotation(number)
  i = 0
  digits = number.to_s.size
  while i < digits - 1
    number = rotate_rightmost_digits(number, digits - i)
    i += 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
