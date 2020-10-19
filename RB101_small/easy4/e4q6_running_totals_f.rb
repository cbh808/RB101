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
tranform array to running total array
iterate over each element by index
sum all elements from idx 0 to current idx
=end

def running_total(array)
  sum = []
  (0..array.size-1).each do |idx| 
    sum << array[0..idx].sum
  end
sum
end

def running_total1(array)
  sum = []
  array.each_index {|idx| sum << array[0..idx].sum}
  sum
end

=begin
# Algorithm with map
Define a method that takes one argument (an array)
initialize local variable `sum` and assign to integer value of 0
Transform array from individual numbers to sum
  - iterate over array values
  - transform element by reassigning sum => sum += value
Return the transformed array
=end
#Code:

def running_total2(initial_values)
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
  # return new object created with #each_with_object

def running_total3(initial_values)
  sum = 0
  initial_values.each_with_object([]) do |num, arr|
    arr << sum += num
  end
end

p running_total([1, 1, 1]) == [1, 2, 3]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
puts
p running_total1([1, 1, 1]) == [1, 2, 3]
p running_total1([2, 5, 13]) == [2, 7, 20]
p running_total1([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total1([3]) == [3]
p running_total1([]) == []
puts
p running_total2([1, 1, 1]) == [1, 2, 3]
p running_total2([2, 5, 13]) == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total2([3]) == [3]
p running_total2([]) == []
puts
p running_total3([1, 1, 1]) == [1, 2, 3]
p running_total3([2, 5, 13]) == [2, 7, 20]
p running_total3([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total3([3]) == [3]
p running_total3([]) == []