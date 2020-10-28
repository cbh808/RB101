=begin
# Problem
# inputs
array as arg  
# outputs  
array with 2 nested arrays, 
1st arr contains 1st half of input arr, 
2nd arr the 2nd half.
# rules
If original arr contains odd num of elements,
middle element to be placed in first arr
# Example / Test Case
see below
# Data Structure 
arrays input
array, nested array output

# Algorithm
def method w/ one arg (array)
init loc variable half_size and assign to array size / 2
determine if array has odd number of elements
  if odd
    first half index = 0
    first half size = (array size / 2 + 1)
      take slice accordingly
    second half index starts at (half_size + 1)
    second half size = half_size
      take slice accordingly
  else is even
    first half size = (array size / 2)
      take slice accordingly
    second half starts at index half_size
    second half size is half_size
      take slice accordingly
  return first half and second half nested in array

=end 

def halvsies(arr)
  half_size = arr.size/2

  if arr.size.odd?
    first_half = arr[0, half_size + 1]
    second_half = arr[half_size +1, half_size]
  else
    first_half = arr[0, half_size]
    second_half = arr[half_size , half_size]
  end
  [first_half, second_half]
end

# refactor
def halvsies(array)
  halfway = array.size/2

  if array.size.odd?
    first_half = array[0..halfway]
  else
    first_half = array[0..halfway-1]
  end

  [first_half, array - first_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
