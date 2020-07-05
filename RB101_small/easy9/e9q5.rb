=begin
# inputs:
string argument
# outputs:
p return true if all of the alphabetic characters inside the string are uppercase, false otherwise. 
# rules:
Characters that are not alphabetic should be ignored.

# Example / Test Case:
see code

# Data Structures:
input string  
output boolean

# Algorithm:
check if string.upcase == string
=end 

def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true