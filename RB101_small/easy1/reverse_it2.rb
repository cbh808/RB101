=begin
# Problem
  # inputs
    string with one or more words as argument to method
    string only letters and spaces
    spaces only when > 1 word in string
  # outputs 
    return given string with words of >= 5 chars with chars reversed

# Example / Test Case
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structure 
  # input string  
  # array input
  # array output
  # output string

# Algorithm
  # split string into array with words as values
  # iterate through array values and find words >= 5 chars
  # reverse them and replace element with reversed word
  # return the string by joining array elements
=end
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


# alt:
def reverse_words2(string)

  arr = string.split.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end

arr.join(' ')
end

puts reverse_words2('Professional')          # => lanoisseforP
puts reverse_words2('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words2('Launch School')         # => hcnuaL loohcS