=begin
# inputs:  two array arguments w list of numbers
# outputs: returns new Array w product of each pair of numbers from the arguments of same index. 
# rules:
assume args contain the same number of elements
# Example / Test Case:
see code
# Data Structures:
input arrays
output array
# Algorithm:
define new empty array
loop array.size times appending product of two input arrays to empty array
=end

def multiply_list(array1, array2)
  product_array = []

  i = 0
  while i < array1.size
    product_array << array1[i] * array2[i]
    i += 1
  end

  product_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# # Algorithm
# define a method w/ two args (arrays)
# iterate over one of the arrays with access to the index
# multiply the numbers of both arrays with same index together
# append new array with result of multiplication
# return array

def multiply_list1(arr1, arr2)
  new_array = []
  arr1.each_index {|idx| new_array << arr1[idx] * arr2[idx]}
  new_array
end

 p multiply_list1([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Alg: same as above iterating over range
def multiply_list2(arr1, arr2)
  arr3 = []
  (0..arr1.size-1).each {|idx| arr3 << arr1[idx] * arr2[idx]}
  arr3
end

 p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list3(arr1, arr2)
  arr3 = []
  arr1.each_with_index {|n, idx| arr3 << n * arr2[idx]}
  arr3
end

p multiply_list3([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
