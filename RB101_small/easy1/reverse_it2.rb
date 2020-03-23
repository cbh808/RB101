# Written problem statement
# Write a method that takes one argument, a string containing
# one or more words, and returns the given string with words 
# that contain five or more characters reversed. Each string 
# will consist of only letters and spaces. Spaces should be 
# included only when more than one word is present.

# Problem
  # inputs
    # string with one or more words
    # string only letters and spaces
    # spaces only when > 1 word in string
  # outputs 
    # string w/ words > 5 char reversed
    # 

# Example / Test Case
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structure 
  # input string  
  # array input
  # array output
  # output string

# Algorithm
  # split string into array
  # iterate through array elements and find words >= 5 chars
  # reverse them and replace element with reversed word
  # return the array elements by joining to output as a string

# Code
def reverse_words(string)
  array1 = string.split
  
  array1.each do |element|
    element.reverse! if element.length >= 5  # can also use 'element.size'
  end
  
  array1.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS