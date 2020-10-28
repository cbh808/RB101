=begin
# Problem
# inputs  
array as argument
# outputs  
new array with elements reversed
# rules
no using Array#reverse or Array#reverse!

# Example / Test Case
see tests below

# Data Structure 
input array
output array

2nd approach: 
find solution with parallel variable assignment idiom
# Algorithm
define method with arg 'list' as array 
copy array into new array 
loop over the new array
use parallel assignment to exchange two values w/o
 requiring an intermediate variable
  e.g. el[0], el[-1] = el[-1], el[0]
  stop reassignment at mid point of array

=end 
def reverse(list)
  i = 0
  j = -1

  new_list = list.clone
    while i < list.length/2
      new_list[i], new_list[j] = new_list[j], new_list[i] 
      i += 1
      j -= 1
    end
  new_list
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
