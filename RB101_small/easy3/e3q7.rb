=begin
# Problem
  # inputs
    #  Array passed in as argument to method
    #
  # outputs 
    # return Array with every other element of original array, i.e.
    the 0 index and even indexed elements, the 1st, 3rd, 5th etc.
    of original array

# Example / Test Case
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# Data Structure 
  # input array
  # return array

# Algorithm
  # define method with one argument
  # define empty array
  # select and add odd elements to array to be returned 
=end
# Code
def oddities(array)
  array2 = []
  i=0
  while i < array.length
    array2 << array[i]
    i += 2
  end
  array2
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]