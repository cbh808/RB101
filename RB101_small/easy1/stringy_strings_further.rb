=begin
# Problem
  # input
    # positive integer as argument to method
    # optional parameter 0 or 1 as 2nd arg to method
    # default of optional parameter = 1
  # outp 
    # string of alternating 1's and 0's
    # length = integer value
    # output starts with 1 by default, 0 if optional param set to 0

# Example / Test Case
  # p stringy(6,0) == '010101'
  # p stringy(9) == '101010101'
  # p stringy(4) == '1010'
  # p stringy(7) == '1010101'
  
# Data Structure 
  # integer input
  # string output

# Algorithm
  # define method with integer as 1st argument, optional 2nd arg set to 1
  # define empty string
  # loop integer times using if / else to choose 1 or 0
  # use string index and == to choose 
=end
# Code
def stringy(integer,a=1) # a=0 to start output with '0'
  string = ""
  i = 0
  while i < integer
    if i.even?
      string.concat("#{a}")
    elsif a == 1
      string.concat('0')
    else
      string.concat('1')
    end
  i += 1
  end
return string
end

p stringy(6,0)
p stringy(6,0) == '010101'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'
