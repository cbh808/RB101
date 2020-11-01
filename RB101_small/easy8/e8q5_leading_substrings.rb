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

# Algorithm ref
  # define a method w/ one arg (str)
  # init loc var arr and assign empty array
  # construct the substrings from the original string
  #   iterate over the indexes of the chars
  #   take slice from 0 index to current char 
  #   append slice to arr
  # return arr

def leading_substrings2(str)
  substrings = []
  (0..str.size-1).each do |idx|
    substrings << str[0..idx]
  end
  substrings
end

puts
p leading_substrings2('abc') == ['a', 'ab', 'abc']
p leading_substrings2('a') == ['a']
p leading_substrings2('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin
# A: use += to add to new_array
iterate over chars
add slice from first char to current char
=end
def leading_substrings3(str)
  substrings = []
  0.upto(str.size-1) do |n|
    substrings += [str[0..n]]
  end
  substrings
end

puts
p leading_substrings3('abc') == ['a', 'ab', 'abc']