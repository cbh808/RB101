=begin
# Problem
# inputs
method include? that takes Array and search value as args
# outputs  
return true if the search value is in the array, false if it is not
# rules
don't use Array#p include?
# Example / Test Case
see code

# Data Structure 
array with ints, empty, nil
return boolean result
# Algorithm
iterate over elements and return true if value == search_value
=end 

def include?(array, search_value)
  array.each do |value|
    return true if value == search_value
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false


