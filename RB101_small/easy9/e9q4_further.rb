=begin
# inputs:
integer argument
# outputs:
return an Array of all integers, in sequence, between 1 and the argument.

# rules:
if argument negative, count from 1 to abs. value of negative
# Example / Test Case:
see code

# Data Structures:
input int
output int

# Algorithm:
use number range and convert to array
=end 

def sequence(integer)
  (1..integer.abs).to_a
end

 p sequence(-5) == [1, 2, 3, 4, 5]
 p sequence(3) == [1, 2, 3]
 p sequence(1) == [1]