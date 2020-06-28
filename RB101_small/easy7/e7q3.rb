# input: single string argument
# output: capitalized words
# rules: assume words are any sequence of non-blank characters
# examples: see code
# dataStructure: input string to manipulated array back to string
# alg:
# split string into array of words
# map over and capitalize each word
# join and separate words with space

def word_cap(string)
 arr = string.split.map {|word| word.capitalize} 
 arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'