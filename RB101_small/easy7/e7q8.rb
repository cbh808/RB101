=begin
# inputs:  two Array arguments w list of numbers
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
loop array.size times assigning product of two input arrays to empty array
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