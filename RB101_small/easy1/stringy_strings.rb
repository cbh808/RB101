=begin
# Problem
  # input
    # positive integer as argument to method
  # output
    # string of alternating 1's and 0's
    # length = integer value
    # output starts with 1

# Example / Test Case
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'
  
# Data Structure 
  # integer input
  # string output

# Algorithm
  # define method with integer as 1st argument
  # define empty string
  # loop integer times using if / else to choose 1 or 0
  # use string index and == to choose 
=end
# Code
def stringy(integer)
  string = ""
  i = 0
  while i < integer
    if i.even?
      string.concat("1")
    else
      string.concat("0")
    end
  i += 1
  end
return string
end

p stringy(6)
p stringy(6) == '101010'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'

# Alternative 
def stringy1(size)
  numbers = []

  size.times do |index|             # .times is concise, replaces counter
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end