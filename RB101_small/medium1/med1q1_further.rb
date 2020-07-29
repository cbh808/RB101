=begin
# inputs:
string
# outputs:
rotates string by moving the first char to the end of the string. 
# rules:
The original string should not be modified.
can use the method Array#rotate or Array#rotate! for your implementation.
# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:
define relevant parts of string and concatenate
=end

# for string
def rotate_string(string)
  string[-1] + string[0..-2]
end

p rotate_string("Rotate Me") == "eRotate M"
p rotate_string("Hello World") == "dHello Worl"

# same idea for integer
# assume no leading 0's for integer
def rotate_integer(integer)
  arr = integer.to_s.chars
  arr.rotate.join.to_i
end

p rotate_integer(171) == 711
p rotate_integer(2211) == 2112