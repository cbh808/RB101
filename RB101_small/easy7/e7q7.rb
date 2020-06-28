=begin
# inputs:
Array of integers
# outputs:  
prints result rounded to 3 decimal places
# rules:
multiplies all the numbers together
divides result by the number of entries in the Array  
assume the array is non-empty.
# Example / Test Case:
see code
# Data Structures:
input: array of ints
intermediate result is float (no integer divsion)
output: floats
# Algorithm:
array as arg and use inject to get multiplication of all elements
divide by array.size converted to float
output rounded to 3 decimal points
=end

def show_multiplicative_average(array)
  result = (array.inject(1) { |product, n| product * n } / (array.size.to_f)).round(3)
  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([6])
#The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
