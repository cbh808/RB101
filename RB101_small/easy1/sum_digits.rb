=begin
# Problem
  # inputs
    # positive integer as argument to method
  # outputs 
    # sum of digits of positive integer
  # rules:
    # writing code without any basic looping constructs 
    # (while, until, loop, and each)

# Example / Test Case
  # puts sum(23) == 5
  # puts sum(496) == 19
  # puts sum(123_456_789) == 45
  # puts sum(0) == 0
  # puts sum(101010) = 3

# Data Structure 
  # integer input
  # string converted from input
  # array of characters converted to array of integer values

# Algorithm
  # define method with integer argument
  # convert argument into string
  # split integer into character array
  # map! elments in place and convert to integers
  # reduce array integers to get sum
=end
# Code
def sum(pos_integer)
  array = pos_integer.to_s.split(//)
  array.map! {|element| element.to_i}
  a = array.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum(0) == 0
puts sum(101010) == 3

# comment: could use '.chars' instead of 'split(//)' 
# Returns an array of the characters from the string