=begin
# inputs:
integer argument
# outputs:
return an Array of all integers, in sequence, between 1 and the argument.

# rules:
assume that argument will always be a valid integer that is greater than 0.
# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:
use 1.upto(arg) to append numbers to an empty array
=end 

def sequence(pos_integer)
 sequence_arr = []
  1.upto(pos_integer) do |int|
    sequence_arr << int
  end
  sequence_arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# alternative
def sequence1(pos_integer)
  (1..pos_integer).to_a
 end

 puts
 p sequence1(5) == [1, 2, 3, 4, 5]
 p sequence1(3) == [1, 2, 3]
 p sequence1(1) == [1]