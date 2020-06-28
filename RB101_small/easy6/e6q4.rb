=begin
# Problem
# inputs  
array as argument
# outputs  
same array with elements reversed and mutated in place
# rules
no using Array#reverse or Array#reverse!

# Example / Test Case
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []


# Data Structure 
arrays everywhere you look

# Algorithm
define method with arg 'list' as array 
loop over the array
shift list[0] and assign to variable
insert variable at list[-1 - i] 
=end 

def reverse!(list)
  i = 0
    while i < list.length
      element = list[0] 
      list.shift
      list.insert(-1-i, element)
      i += 1
    end
  list
end
  
  list = [1,2,3,4]
  result = reverse!(list)
  p result == [4, 3, 2, 1]
  p list == [4, 3, 2, 1]
  p list.object_id == result.object_id
  
  list = %w(a b e d c)
  p reverse!(list) == ["c", "d", "e", "b", "a"]
  p list == ["c", "d", "e", "b", "a"]
  
  list = ['abc']
  p reverse!(list) == ["abc"]
  p list == ["abc"]
  
  list = []
  p reverse!(list) == []
  p list == []
  