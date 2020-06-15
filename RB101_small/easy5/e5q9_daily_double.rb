=begin
# Problem
# inputs
 method that takes a string argument
# outputs  
returns new string that contains value of original string with all 
consecutive duplicate characters collapsed into a single character
# rules
do not use String#squeeze or String#squeeze!.    

# Example / Test Case
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Data Structure 
strings as inputs
strings as outputs

# Algorithm
compare each string char to previous char, passing to new string
if same, dont include in new string
handle cases if empty string or string with one char
=end 

def crunch(string)
  new_string = ''
  if string.size >= 1
    new_string << string[0]
    i = 1
    until i == string.size
      new_string << string[i] if string[i] != string[i-1]
      i += 1
    end
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
