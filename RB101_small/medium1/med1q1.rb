=begin
# inputs:
array
# outputs:
rotates an array by moving the first element to the end of the array. 
# rules:
The original array should not be modified.
Do not use the method Array#rotate or Array#rotate! for your implementation.
# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:
make shallow copy of array
shift new array
push shifted element to array
=end

def rotate_array(array)
  array2 = array.clone
  array2.push(array2.shift)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4] 
