=begin
# Problem
# inputs
string argument
# outputs
new string that contains value of original string with all
consecutive duplicate characters collapsed into a single character
# rules
do not use String#squeeze or String#squeeze! methods

# Example / Test Case
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Data Structure
input: string
output: string

# Algorithm refactor
define method w/ one arg (string)
create a new empty string
iterate over each char of string
if it is not equal to last character of new string, then add it
return new string
=end

def crunch(string)
  new_string = ''
  string.each_char do |char|
    new_string << char unless char == new_string[-1]
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
