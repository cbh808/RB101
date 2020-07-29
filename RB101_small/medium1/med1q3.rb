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
loop over input integer 'number of digits times - 1'
i=0
call rotate_rightmost_digits(number, number of digits - i)
=end 
def max_rotation(number)
  i = 0
  digits = number.to_s.size
  while i < digits - 1 
    number = rotate_rightmost_digits(number, digits - i)
    i += 1
  end
  number
end

def rotate_rightmost_digits(integer, n)
  char_array = integer.to_s.chars
  char_array = char_array[0..-n-1] + char_array[-n..-1].rotate
  char_array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845