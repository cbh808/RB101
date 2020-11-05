=begin
# inputs:
two integers as arguments
first argument is parameter `count`
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
define method w/ 2 args (count, start_number)
init loc var and assign empty array
init loc var as counter and assign value of 1
loop count times starting at 1 and incrementing counter by 1 each loop
append to array the starting number * loop count 
return array
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

=begin
# Algorithm ref
define a method w/ 2 args (int1, int2)
create array = range from 1..int1 converted to an array
transform array by mulitiplying each element by int2
return array
=end

def sequence1(count, mulitiple)
  # Enumerable#map converts range input into an array
  (1..count).map {|num| num * mulitiple}
end


puts
p sequence1(5, 1) == [1, 2, 3, 4, 5]
p sequence1(4, -7) == [-7, -14, -21, -28]
p sequence1(3, 0) == [0, 0, 0]
p sequence1(0, 1000000) == []
