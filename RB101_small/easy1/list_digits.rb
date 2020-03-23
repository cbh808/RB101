def digit_list(integer)
  list = integer.to_s.split(//) 
  # turns int to string, then splits into character array
  # p list
  list.map! {|char| char.to_i}
  # p list
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(0) == [0]                     # => true

puts digit_list(007) == [0, 0, 7]             # => false
p digit_list(007)                             # => [7]

# Written problem statement
# Write a method that takes one argument, positive 
# integer, returns a list of the digits in the number.

# Problem
  # inputs
    # positive integer

  # outputs 
    # list of digits of the positive integer

# Example / Test Case
  # puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
  # puts digit_list(7) == [7]                     # => true
  # puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
  # puts digit_list(444) == [4, 4, 4]             # => true

# Data Structure 
  # input positive integer
  # output array

# Algorithm
  # method w/ one positive integer argument
  # split individual digits into array
  # puts true if method returns correct list

# Code commentary

# Brute force:
# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end

# NOTES:
# 'Integer#divmod' which divides number by 10,returns two values:
# the result of performing an integer division, and 
# the remainder. E.g. 12345.divmod(10) returns [1234, 5]
# '.unshift' Prepends objects to the front of self, moving other elements upwards.


# Idiomatic Ruby:
# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

# NOTES:
# 'chars' Returns an array of characters in str. Shorthand for 'str.each_char.to_a'
# '(&:to_i)' is equivalent to 'something.map { |char| char.to_i }'