=begin
# Problem
# inputs
String as an argument
# outputs
returns new String that uses staggered capitalization,
i.e every other character is capitalized
remaining characters are lowercase.
# rules
Characters that are not letters should not be changed,
but count as chars when switching between upper and lowercase.

# Example / Test Case
see code

# Data Structure
string input, array manipulation, string output

# Algorithm
def method w/ one arg (str)
  init loc var and assign to empty str
  iterate over 0..string.size - 1 as idx
  if str[idx] =~ /[^A-Za-z]/
    new_str << str[idx]
  elsif idx.odd?
    new_str << downcase str[idx]
  else
    new_str << upcase str[idx]
=end

def staggered_case(str)
  new_str = ''
  (0..str.size-1).each do |idx|
    if idx.odd?
      new_str << str[idx].downcase
    else
      new_str << str[idx].upcase
    end
  end
  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'