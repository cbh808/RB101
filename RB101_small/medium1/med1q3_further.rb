=begin
# inputs:
takes an integer as argument
# outputs:
returns the maximum rotation of that argument as a string (to keep any leading zeros)
# rules:
 use the rotate_rightmost_digits from previous exercise

# Example / Test Case:
see code

# Data Structures:
input integer as argument
output string 

# Algorithm:
loop over input integer converted to array of chars 'arr.size times - 1'
i=0
loop over each character, deleting it from array
push deleted value back to array
=end 
def max_rotation(number)
  size = number.to_s.size
  arr = number.to_s.chars
  
  i = 0
  while i < size - 1 
    arr.push(arr.delete(arr[i])) #mutates and iterates but size stays same
    i += 1
  end
  arr.join('')
end


p max_rotation(735291) == '321579'
p max_rotation(3) == '3'
p max_rotation(35) == '53'
p max_rotation(105) == '015' #left as string so that leading zero retained
p max_rotation(8_703_529_146) == '7321609845'  #no underscores when rejoining