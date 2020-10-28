=begin
# Problem
# inputs
method include? that takes Array and search value as args
# outputs  
return true if the search value is in the array, false if it is not
# rules
don't use Array#include? method
# Example / Test Case
see code

# Data Structure 
input array
output boolean

# Algorithm
iterate over elements and return true if value == search_value
=end 






# def include?(array, search_value)
#   array.each do |value|
#     return true if value == search_value
#   end
#   false
# end

def include?(array1, search_value)
  array1.pop until array1.empty? || array1 == nil || array1[-1] <= search_value
  return true if array1.last == search_value
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
p include?([nil], nil) == true
# p include?([], nil) == false


