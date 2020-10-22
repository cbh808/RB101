=begin
# Problem
write method that returns 'ASCII string value' of string
i.e. sum of the ASCII-values of all the chars in a string 
# inputs  
string
# outputs  
return integer => ASCII string value
# rules

# Example / Test Case
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Data Structure 
input: string 
output: integer 

# Algorithm I
define method w one arg
Iterate over each letter of the string
caluculate the ASCII value and add to running total
return sum 
=end
def ascii_value(string)
  sum = 0
  string.each_char {|char| sum += char.ord}
  sum
end
  

# Algorithm II
# define method w one arg
# Convert string into array of chars
# transform the array values into ascii integers
# sum the transformed array

def ascii_value2(string)
  string.chars.map {|char| char.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
puts
p ascii_value2('Four score') == 984
p ascii_value2('Launch School') == 1251
p ascii_value2('a') == 97
p ascii_value2('') == 0