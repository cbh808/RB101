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
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(string)
  new_string = ''
  string.split.each do |word|
    if DIGIT_HASH.keys.include?(word)
      new_string << DIGIT_HASH[word]
    else
      new_string << word + ' '
    end
  end
  p new_string
end
  # if new_string[-1] == ' '
    

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5551234. Thanks.'
p word_to_digit('Numbers 6 5 73 and 7 3 are at five five five one two three four.') #== 'Numbers 6 5 73 and 7 3 are at 5551234.'
p word_to_digit('1 2 3 four five 6 7 8 9')