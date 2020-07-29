=begin
# inputs:
sentence string
# outputs:
returns the string with any sequence of words 'zero', 'one', 'two', 'three', 
'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits
# rules:

# Example / Test Case:
word_to_digit('Please call me at five five five one two three four. 
Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Data Structures:
input string
manipulate with number workds stored in array or hash
output string

# Algorithm:
pass string argument
use gsub! for each number word to amend string in place
return string
=end 

def word_to_digit(string) 
    string.gsub!('one', '1')
    string.gsub!('two', '2')
    string.gsub!('three', '3')
    string.gsub!('four', '4')
    string.gsub!('five', '5')
    string.gsub!('six', '6')
    string.gsub!('seven', '7')
    string.gsub!('eight', '8')
    string.gsub!('nine', '9')
    string.gsub!('zero', '0')
    string
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'