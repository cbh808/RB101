# Written problem statement
  # Write a method that takes one argument, a positive 
  # integer,and returns a string of alternating 1s and 
  # 0s, always starting with 1. The length of the string 
  # should match the given integer.

# Problem
  # inputs
    # positive integer
    
  # outputs 
    # string of alternating 1's and 0's
    # length = integer 
    # starts with 1

# Example / Test Case
  # puts stringy(6) == '101010'
  # puts stringy(9) == '101010101'
  # puts stringy(4) == '1010'
  # puts stringy(7) == '1010101'
  
# Data Structure 
  # integer
  # string
  #

# Algorithm
  # method def with pos. integer as argument
  # loop integer times using if / else to choose 1 or 0
  # use string index and == to choose 


# Code
def stringy(integer)
  string = ""
  i = 0
  while i < integer
    if i.even?
      string.concat("1")
      i += 1
    else
      string.concat("0")
      i += 1
    end
  end
return string
end

puts stringy(6)
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Alternative 
# def stringy(size)
#   numbers = []

#   size.times do |index|             # .times is concise, replaces counter
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end