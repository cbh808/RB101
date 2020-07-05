=begin
# inputs:
non-empty string argument
# outputs:
returns the middle character or characters of the argument. 
# rules:
If the argument has an odd length, return exactly one character
If the argument has an even length, return exactly two characters
returns new string in which every character is doubled.
# Example / Test Case:
see code

# Data Structures:
input string
output substring

# Algorithm:
create empty string
midpoint = string.size/2
if string.size odd return string[midpoint] 
else return string[midpoint-1..midpoint]
=end 

def center_of(string)
  midpoint = string.size/2
  if string.size.odd?
    string[midpoint]
  else
    string[midpoint-1..midpoint]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
