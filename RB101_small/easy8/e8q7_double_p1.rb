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

=begin
# Algorithm ref I
define a method w/ one arg (str)
init loc var and assing empty str
iterate over each char of string
concatenate new string with char * 2
return new string
=end 

def repeater1(str)
  double = ''
  str.each_char {|char| double += char * 2}
  double
end

puts
p repeater1('Hello') == "HHeelllloo"
p repeater1("Good job!") == "GGoooodd  jjoobb!!"
p repeater1('') == ''

=begin
# Algorithm ref II
define a method w/ one arg (str)
covert str to arr, iterate over each char of string
transform each char to char * 2
join array elements
=end

def repeater2(str)
  str.chars.map {|char| char * 2}.join
end

puts
p repeater2('Hello') == "HHeelllloo"
p repeater2("Good job!") == "GGoooodd  jjoobb!!"
p repeater2('') == ''