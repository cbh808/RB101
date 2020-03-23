# Written problem statement
  # Write a method that takes one argument, an array 
  # containing integers, and returns the average of 
  # all numbers in the array. The array will never be 
  # empty and the numbers will always be positive integers.

# Problem
  # inputs
    # method with 1 argument, array of integers
    # array never empty & numbers positve

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
  # divide by count of elements (return a float)

# Code
def average(number_array)
  sum = 0
  number_array.each {|element| sum += element }
  sum / number_array.count.to_f
end

puts average([1, 5, 87, 45, 8, 8])
# puts average([1, 5, 87, 45, 8, 8]) == 25

puts average([9, 47, 23, 95, 16, 52])
# puts average([9, 47, 23, 95, 16, 52]) == 40
