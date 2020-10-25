=begin
# Problem
# inputs  
two arrays as args
# outputs  
new array with all values from argument arrays
# rules
no duplicate values in new array
# Example / Test Case
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


# Data Structure 
array inputs / array output

# Algorithm
concatenate two arguments then call unique on them

=end 

def merge (arr1, arr2)
  arr1.concat(arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# alternative: Array#| method (union of values of two arrays)
def merge (arr1, arr2)
  arr1 | arr2
end