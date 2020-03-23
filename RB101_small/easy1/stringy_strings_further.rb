# Written problem statement
  # Write a method that takes one argument, a positive 
  # integer,and returns a string of alternating 1s and 
  # 0s, always starting with 1. The length of the string 
  # should match the given integer.
  # Further Exploration
  #  Modify stringy so it takes an additional optional
    # argument that defaults to 1. If the method is called 
    # with this argument set to 0, the method should return 
    # a String of alternating 0s and 1s, but starting 
    # with 0 instead of 1.
# Problem
  # inputs
    # call method with positive integer and optional parameter 0 or 1
    # default of optional parameter = 1
    
  # outputs 
    # string of alternating 1's and 0's
    # length = integer 
    # starts with 1 by default, 0 if provided

# Example / Test Case
  # puts stringy(6,0) == '010101'
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
def stringy(integer,a=1) # 2nd parameter can be '0' to start output with '0'
  string = ""
  i = 0
  while i < integer
    if i.even?
      string.concat("#{a}")
      i += 1
    elsif a == 1
      string.concat('0')
      i += 1
    else
      string.concat('1')
      i += 1
    end
  end
return string
end

puts stringy(6,0)
puts stringy(6,0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
