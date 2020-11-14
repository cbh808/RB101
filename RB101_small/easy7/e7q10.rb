=begin
# inputs:  
string arg.
# outputs:  
return the next to last word in the String
# rules:
assume words are any sequence of non-blank characters
ssume input String will always contain at least two words
# Example / Test Case:
see code
# Data Structures:
input string
change into array
output string
# Algorithm:
split string into array
return array index -2
=end 

def penultimate(string)
 string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
