=begin
# inputs:
words in string separated by spaces
# outputs:
same words in an array as string elements with number of characters incl. in string after space
# rules:
assume that words in the string are separated by exactly one space
any substring of non-space characters is a word
# Example / Test Case:
see code

# Data Structures:
input string  
output array with string elements

# Algorithm ref:
split string into an array of words
transform new array elements (words) to add space and the length of word
=end 

def word_lengths(string)
  string.split.map {|word| "#{word} #{word.size}"}
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

#alternative one line solution
def word_lengths1(words)
  words.split.map { |word| "#{word} #{word.size}" }
end