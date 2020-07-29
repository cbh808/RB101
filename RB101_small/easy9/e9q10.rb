=begin
# inputs:
array with nested two element arrays, fruit 
# outputs:
array with grocery list array of the correct number of each fruit.
# rules:

# Example / Test Case:
see code

# Data Structures:
input nested array of string, integer pairs
output array of strings

# Algorithm:
iterate over array mapping index[0] * index[1] 
=end 

def buy_fruit(nested)
  list = []
  nested.each do |element|
    element[1].times do
    list << element[0]
    end
  end
list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]