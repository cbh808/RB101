=begin
# Problem
# inputs
array as arg  
# outputs  
array with 2 nested arrays, 1st arr contains 1st half of input arr, 2nd arr the 2nd half.
# rules
If original arr contains odd num of elements,middle element to place in first arr
# Example / Test Case
see below
# Data Structure 
arrays input
array, nested array output
# Algorithm
def method w/ array arg
assign 1st half to var a
if arr.len odd assign element len/2 to a
assing 2nd half to var b (if even, element len/2 to -1, else len/2+1 to -1)
assign var a and b to elements 0,1 of new array

def method w/ array args
if size odd...
else...

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

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
