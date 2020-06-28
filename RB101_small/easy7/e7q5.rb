=begin
# Problem
# inputs  
String as an argument
# outputs  
returns new String that contains original value 
use staggered capitalization - every other character is capitalized
remaining characters are lowercase. 
# rules
Characters that are not letters should not be changed,
but count as chars when switching between upper and lowercase.
# Example / Test Case
see code
# Data Structure 
string input, array manipulation, string output
# Algorithm
convert string to array of chars and iterate over each index
change 0 and even index chars to upcase and others to downcase (in case already caps)
join back to string

=end 
def staggered_case(string)
  array = string.chars.each_with_index do |char, idx|
    if idx.even?
      char.upcase! 
    else
      char.downcase!
    end
  end
  array.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'