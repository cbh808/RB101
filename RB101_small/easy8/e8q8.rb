=begin
# inputs:
string
# outputs:
returns new string in which every consonant is doubled.
# rules:

# Example / Test Case:
see code

# Data Structures:
input string
output string

# Algorithm:
create constant with array of chars to be doubled
create empty string
iterate over each char of string
if included in constant, append 2 times to new string
if not append one time to new string
return new string
=end 
CONSONANTS = %w( b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  doubled_string = ''
  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      doubled_string << char << char
    else
      doubled_string << char
    end
  end
  doubled_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# with regex and array instead of string
def double_consonants1(string)
  doubled_array = []
  string.chars.each do |char|
    if char.match?(/[b-df-hj-np-tv-z]/i)
      doubled_array << char << char
    else
      doubled_array << char
    end
  end
  doubled_array.join
end

p double_consonants1('String') == "SSttrrinngg"
p double_consonants1("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants1("July 4th") == "JJullyy 4tthh"
p double_consonants1('') == ""
