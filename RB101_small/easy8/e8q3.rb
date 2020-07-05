=begin
# inputs:
string as arg
# outputs:
return list of all substrings that start at the beginning of the original string. 
# rules:
The return value should be arranged in order from shortest to longest substring.
# Example / Test Case:
see code

# Data Structures:
input string
output array containing string elements

# Algorithm:
define empty array 
iterate over string
 append slice string[0] to string index of iteration step to array
=end 

def substrings_at_start(string)
  array = []
  i = 0
  while i < string.size
    array << string[0..i]
    i += 1
  end
  array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
