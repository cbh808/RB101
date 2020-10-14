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
  # loop integer times using conditional to choose 1 for even indexes or 0 for odds
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

puts stringy1(6) == '101010'
puts stringy1(9) == '101010101'
puts stringy1(4) == '1010'
puts stringy1(7) == '1010101'
puts

# other ways to solve:
# 1) change other toggle back and forth to 1 or 0 based on iteration
def stringy2(integer)
  string = ""
  counter = 0
  while counter < integer
    toggle = 0
      if counter.even?
        toggle += 1
      end
    string[counter] = toggle.to_s
    counter += 1
  end
return string
end

puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'
puts


=begin
input number
output string that is number of chars long
chars start with '1', alternating with '0'
if idx odd char is 1, if idx is even char is 0

Algo
pass integer arg to method
create empty string
iterate over indexes from 0 to (length of integet arg - 1)
if odd append '1' to string, else '0'
return string
=end
def stringy3(int)
str = ''
  (0..int-1).each do |idx|
    if idx.odd? 
      str << '0' 
    else
      str << '1' 
    end
  end
  str
end

puts stringy3(6) == '101010'
puts stringy3(9) == '101010101'
puts stringy3(4) == '1010'
puts stringy3(7) == '1010101'

