=begin
rotate the last n digits of a number
# inputs:
number, number of end digits to rotate
# outputs:
new number with end digits rotated
# rules:
rotating just 1 digit results in the original number being returned.
may use the rotate_array method 
assume that n is always a positive integer.
# Example / Test Case:
see code

# Data Structures:
input integers
manipulate as an array
output integer

# Algorithm:
convert integer into string and into charactrer array
return non rotated part of array[0..-(2nd argument -1)] + rotatated part array[-2nd argument..-1] 
=end 
  def rotate_rightmost_digits(integer, n)
    char_array = integer.to_s.chars
    char_array = char_array[0..-n-1] + char_array[-n..-1].rotate
    char_array.join.to_i
  end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917