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
arrays everywhere you look

# Algorithm
define method with arg 'list' as array 
copy array into new array list
loop over the new array
shift list[0] and assign to variable
insert variable at list[-1 - i] 

2nd approach: find solution with ruby 2 variable definition idiom
=end 
def reverse(list)
  i = 0
  new_list = list.clone
    while i < list.length
      element = new_list[0] 
      new_list.shift
      new_list.insert(-1-i, element)
      i += 1
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