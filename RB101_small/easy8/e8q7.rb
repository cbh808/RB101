=begin
# inputs:
string
# outputs:
returns new string in which every character is doubled.
# rules:

# Example / Test Case:
see code

# Data Structures:
input string
output string

# Algorithm:
create empty string
iterate over chars
append char*2 to emptystring
=end 

def repeater(string)
  doubled_string = ''
  string.each_char do |char|
    doubled_string << char*2
  end
  doubled_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
