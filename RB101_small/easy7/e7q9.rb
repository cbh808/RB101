=begin
# inputs: 2 array args, each array contains list of numbers
# outputs: new array w the product of every pair of numbers that
can be formed between the elements of the two arrays
# rules:
results should be sorted by increasing value
assume that neither argument is an empty array

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


# # using Ruby Array.each blocks
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

# Algorithm
  # define a method w/ two args (arrays)
  # init loc var products
  # find all combinations of arrays
  #   obtain all combinations as nested arrays
  #   [[2, 4], [2, 3], [2, 1], [2, 2], [4, 4], [4, 3], [4, 1], [4, 2]]
  # iterate over products array
  # transform product array by multipling combinations together
  # return sorted array


def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|n1, n2| n1 * n2}.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]