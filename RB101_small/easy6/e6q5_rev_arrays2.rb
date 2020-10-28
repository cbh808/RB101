=begin
# Problem
# inputs
array as argument
# outputs
new array with elements reversed
# rules
no using Array#reverse or Array#reverse!
original list may not be modified

# Example / Test Case
see tests below

# Data Structure
input: array
output: new array

# Algorithm refactor
define method w/ one arg (arr)
initialize local var, assign empty array
iterate over arr
  put copy of value at front of new array
end
return new array
=end

def reverse(arr)
  new_arr = []
  arr.each {|n| new_arr.unshift(n)}
  new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]
