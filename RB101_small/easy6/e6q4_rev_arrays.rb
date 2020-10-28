=begin
# Problem
# inputs  
array as argument
# outputs  
same array with elements reversed 
# rules
array to be mutated in place
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
input: array
output: array

# Algorithm
define method with arg (array)
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

# Alg refactor
#   define method with arg (array)
#   initialize local var and assign to array
#   iterator = 1
#   iterate over array with index
#     reassign each element of array to value copy array[-iterator]
#   end

def reverse!(list_r)
  copy_arr = list_r.clone
  i = -1
  list_r.each_index do |idx|
    list_r[idx] = copy_arr[i]
    i -= 1
  end
  list_r
end

puts
list_r = [1,2,3,4]
  result = reverse!(list_r)
  p result == [4, 3, 2, 1]
  p list_r == [4, 3, 2, 1]
  p list_r.object_id == result.object_id
  
  list_r = %w(a b e d c)
  p reverse!(list_r) == ["c", "d", "e", "b", "a"]
  p list_r == ["c", "d", "e", "b", "a"]
  
  list_r = ['abc']
  p reverse!(list_r) == ["abc"]
  p list_r == ["abc"]
  
  list_r = []
  p reverse!(list_r) == []
  p list_r == []
