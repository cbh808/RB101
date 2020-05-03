=begin
# Problem
  # inputs
    # string as argument to method
  # outputs 
    # return new string with words in reverse order

# Example / Test Case, tests should print true:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Data Structure 
  # input string
  # array
  # output string

# Algorithm
  # define method with string argument 
  # split string into individual words and store in array
  # switch order of elements in array and join as string
=end
# Code
def reverse_sentence(string)
  array = string.split.reverse # split string into array of substrings & reverse order
  array.join(' ')              # join words into string with ' ' as delimiter
end                            # string method .reverse also exists, no need for array

puts reverse_sentence('')
puts reverse_sentence('') == ''

puts reverse_sentence('Hello World')
puts reverse_sentence('Hello World') == 'World Hello'

puts reverse_sentence('Reverse these words')
puts reverse_sentence('Reverse these words') == 'words these Reverse'
