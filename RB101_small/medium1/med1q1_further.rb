=begin
# inputs:
string
# outputs:
rotates string by moving the first char to the end of the string. 
# rules:
The original string should not be modified.
can use the method rotate_array from main exercise for your implementation.
# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:
define relevant parts of string and concatenate
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# for string
def rotate_string(string)
  rotate_array(string.chars).join
end

string = "Rotate Me"
p rotate_string(string) == "otate MeR"
p string
#p rotate_string("Hello World") == "dHello Worl"

# same idea for integer
# assume no leading 0's for integer
def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

p rotate_integer(171) == 711
p rotate_integer(2211) == 2112