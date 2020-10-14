=begin
# Problem
Write method taking array of numbers as arg
Return array with same number of elements
Each element contains running total from the original array
Running total is sum of all elements from idx 0 to current idx
  # inputs
    array of numbers as argument to method
  # outputs 
    # output array of numbers (same length array)
    # elements are running total of input array

# Example / Test Case
running_total([1, 1, 1]) == [1, 2, 3]
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Data Structure 
  # input: array
  # output: return value as array

# Algorithm
Define a method that takes one argument (an array)
initialize local variable `sum` and assign to integer value of 0
Transform array from individual numbers to sum
  - iterate from idx 0 to array length - 1
  - transform element value to sum of its own value and previous element
Return the transformed array
=end
#Code:

def running_total(initial_values)
  sum  = 0
  initial_values.map do |num|
    sum += num
  end
end

# Algorithim for Enumerable#each_with_object
  # Define a method that takes one argument (an array)
  # initialize local variable `sum` and assign to integer value of 0
  # Use array as caller for Enumerable#each_with_object
  # Pass in new empty array as object argument
  # Use block to pass in sum in to new array

def running_total2(initial_values)
  sum = 0
  initial_values.each_with_object([]) do |num, arr|
    arr << sum += num
  end
end

# method takes input array as arg
  # create empty output array
  # add element 0 to output array if input_array not empty
  # create block that iterates through 2 elements of array
  # ..sums them together and adds value to output array
  # return output array

# initial Code
def running_total0(input_array)
output_array = []
  if input_array == []
    output_array
  elsif input_array.size == 1
    output_array << input_array[0]
  else
    output_array << input_array[0]
    for i in 1...input_array.size
      output_array << output_array[i-1] + input_array[i]
    end
  end
  output_array
end

# the above can be made more concise, but less readable:
# def running_total(input_array)
#   output_array = []
#   output_array << input_array[0] if input_array[0] != nil 
#   for i in 1...input_array.size
#     output_array << output_array[i-1] + input_array[i]
#   end
#   output_array
# end

p running_total([1, 1, 1]) == [1, 2, 3]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
