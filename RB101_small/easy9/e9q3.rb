=begin
# inputs:
number as an argument.
# outputs:
If the argument is a positive number, return the p negative of that number
If the number is 0 or p negative, return the original number.
# rules:

# Example / Test Case:
see code

# Data Structures:
input int
output int

# Algorithm:
check if > 0 & return negative
=end 

def negative(integer)
  integer > 0 ?  -integer : integer
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0