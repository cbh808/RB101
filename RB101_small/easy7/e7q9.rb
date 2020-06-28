=begin
# inputs: 
2 Array args, each Array contains list of numbers
# outputs:  
returns new Array w the product of every pair of numbers that 
can be formed between the elements of the two Arrays
# rules: 
results should be sorted by increasing value.
assume that neither argument is an empty Array.
# Example / Test Case:
see code
# Data Structures:
input arrays
output array
# Algorithm:
define empty array
define two counters i and j
create outer loop iterating over array 1 elements
create inner loop iterating over array 2 elements
multiply each element of outer loop by each element of inner loop to capture all combinations
append products of pairs to new array
return sorted version of new array
=end 

def multiply_all_pairs(array1, array2)
  product_combinations = []
  
  i = 0
  j = 0
  while i < array1.size
    while j < array2.size
      product_combinations << array1[i] * array2[j]
      j += 1
    end
    i += 1
    j = 0
  end

  product_combinations.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# using Ruby Array.each blocks
def multiply_all_pairs1(array1, array2)
  product_combinations = []
  
  array1.each do |num1|
    array2.each do |num2|
      product_combinations << num1 * num2
    end
  end

  product_combinations.sort
end

p multiply_all_pairs1([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]