# Problem
  # inputs
    # array of integers as argument to method
    # array to never be empty & all numbers positve
  # outputs 
    # return avg. of all numbers in array

# Example / Test Case
  # puts average([1, 5, 87, 45, 8, 8]) == 25
  # puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structure 
  # array of integers
  # output: integer

# Algorithm
  # iterate through array, summing the elements
  # divide by count of elements (integer division)

# Code
def average(number_array)
  sum = 0
  number_array.each {|element| sum += element }
  sum / number_array.count
end

puts average([1, 5, 87, 45, 8, 8])
puts average([1, 5, 87, 45, 8, 8]) == 25

puts average([9, 47, 23, 95, 16, 52])
puts average([9, 47, 23, 95, 16, 52]) == 40

# LS version:
  # def average(numbers)
  #   sum = numbers.reduce { |sum, number| sum + number }
  #   sum / numbers.count
  # end

# reduce(initial) { |memo, obj| block } → obj 

# Combines all elements of enum by applying a binary operation, 
# specified by a block or a symbol that names a method or operator.

# The inject and reduce methods are aliases.

# If you specify a block, then for each element in enum 
# the block is passed an accumulator value (memo) and the element. 
# If you specify a symbol instead, then each element in the collection 
# will be passed to the named method of memo. In either case, the 
# result becomes the new value for memo. At the end of the iteration, 
# the final value of memo is the return value for the method.

# If you do not explicitly specify an initial value for memo, 
# then the first element of collection is used as the initial value of memo.