# # Written problem statement
# Write a method that takes one argument, a 
# positive integer, and returns the sum of 
# its digits.
# For a challenge, try writing this without 
# any basic looping constructs (while, until, loop, and each).


# Problem
  # inputs
    # positive integer
    # 
  # outputs 
    # sum of digits of positive integer
    # 

# Example / Test Case
  # puts sum(23) == 5
  # puts sum(496) == 19
  # puts sum(123_456_789) == 45
  # puts sum(0) == 0
  # puts sum(101010) = 3


# Data Structure 
  # integer
  #
  # without basic looping constructs

# Algorithm
  # def method with integer argument
  # turn argument into string and split integer and turn back to int
  # reduce numbers to get sum
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

# # comment: instead of 'split(//)' could have
# used '.chars'
  # Returns an array of characters in str. 
  # This is a shorthand for str.each_char.to_a.