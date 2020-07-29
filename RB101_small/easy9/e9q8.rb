=begin
# inputs:
two integers as arguments
first argument is a count
second is the first number of a sequence that your method will create
# outputs:
return an Array that contains the same number of elements as the count argument
the values of each element will be multiples of the starting number
# rules:
assume that the count argument will always have a value of 0 or greater
the starting number can be any integer value
If the count is 0, an empty list should be returned
# Example / Test Case:
see code

# Data Structures:
input two ints as args
output array sequence of ints

# Algorithm:
create empty array
loop count times starting at 1
append (starting number * loop count) to array
=end 

def sequence(count, start_number)
  sequence_array = []
  i = 1
  while i <= count
    sequence_array << start_number * i
    i +=1
  end
sequence_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
