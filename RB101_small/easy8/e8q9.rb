=begin
# inputs:
positive integer as an argument
# outputs:
return number with its digits reversed
# rules:
can ignore arguments with leading zeros, i.e. leading zeros not required in reversed solution
# Example / Test Case:
see code

# Data Structures:
input int 
output int

# Algorithm:
turn int into string
reverse string
convert string to int and return
=end 

def reversed_number(integer)
  integer.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
