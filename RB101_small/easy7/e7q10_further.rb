=begin
# inputs:  
string arg.
# outputs:  
return the middle word in the String
# rules:
assume words are any sequence of non-blank characters
handle edge cases: empty string, one-word string, even-number of words, 
# Example / Test Case:
see code
# Data Structures:
input string
change into array
output string
# Algorithm:
split string into array
return array index -2
=end 
def middle_word(string)
 word_array = string.split
 middle = word_array.size / 2
  if word_array == []
    'empty'
  elsif word_array.size.even?
    'no middle'
  else
    word_array[middle]
  end
end

p middle_word('last word') == 'no middle' #'phrase has an even number of words, no middle word'
p middle_word('last word is the last word') == 'no middle'
p middle_word('Launch School is pretty great!') == 'is'
p middle_word('') == 'empty'
