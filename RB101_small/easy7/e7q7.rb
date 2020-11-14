=begin
multiply all the numbers in array together
divides result by the number of entries in the array
print the result to 3 decimal places
# inputs: Array of integers
# outputs: prints result rounded to 3 decimal places
# rules:
the array is non-empty

# Example / Test Case:
see code

# Data Structures:
input: array of ints
intermediate result is float (no integer divsion)
output: string

# Algorithm
define a method w/ one arg (array)
multiply the numbers of the array together
  iterate over elements and add multiplication of each element to accumulator value
  accumulator starts at one
divide by the number of arr elements
print the result to 3 decimal places
=end

def show_multiplicative_average(arr)
  numerator = arr.inject(1) {|memo, num| memo *= num }
  denominator = arr.size.to_f
  mult_avg = numerator / denominator
  puts "=> The result is #{format('%.3f', mult_avg)}"
end


show_multiplicative_average([3, 5])
# => The result is 7.500

show_multiplicative_average([6])
# => The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# => The result is 28361.667
