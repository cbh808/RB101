# Written problem statement
# Write a method that takes one argument, a string, 
#  and returns a new string with the words in reverse order.

# Problem
  # inputs
    # string
    #
  # outputs 
    # string in reverse order
    # 

# Example / Test Case
# tests should print true:
  # puts reverse_sentence('') == ''
  # puts reverse_sentence('Hello World') == 'World Hello'
  # puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Data Structure 
  # input string
  # array
  # output string

# Algorithm
  # define method with string argument 
  # split string into individual words and store in array
  # switch order of elements in array and join as string
  # run test cases

# Code

def reverse_sentence(string)
  array = string.split.reverse # split string into array of substrings & reverse order
  array.join(' ')              # join words into string with ' ' as delimiter
end

puts reverse_sentence('')
puts reverse_sentence('') == ''

puts reverse_sentence('Hello World')
puts reverse_sentence('Hello World') == 'World Hello'

puts reverse_sentence('Reverse these words')
puts reverse_sentence('Reverse these words') == 'words these Reverse'