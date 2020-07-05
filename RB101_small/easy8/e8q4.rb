=begin
# inputs:
string
# outputs:
return list of all substrings of a string. 
# rules:
list should be ordered by where in the string the substring begins
i.e. all substrings that start at position 0 should come first, etc.
use the substrings_at_start method of previous exercise:
# Example / Test Case:
see code

# Data Structures:
input string
output array of string elements

# Algorithm:
loop over string 
call substrings_at_start_method for subset of string
=end 

def substrings(string)
  array_final = []
  i = 0
  while i < string.size
    array_final << substrings_at_start(string[i..-1])
    i += 1
  end
  array_final.flatten
end

def substrings_at_start(string)
  array = []
  i = 0
  while i < string.size
    array << string[0..i]
    i += 1
  end
  array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
