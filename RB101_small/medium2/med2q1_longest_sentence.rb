=begin
Write a program that reads the content of a text file and then prints 
the longest sentence in the file based on number of words. 
Sentences may end with periods (.), exclamation points (!), or question marks (?). 
Any sequence of characters that are not spaces or sentence-ending characters should 
be treated as a word. You should also print the number of words in the longest sentence.
Problem:
Read content of text file
find longest sentence
rules:
Sentence-ending chars: '.', '!' or '?'
words are any sequence of chars, except sentence-ending chars
# inputs:
paragraph 
# outputs:
Print longest sentence
Print number of words in longest sentence

# rules:
Longest sentence defined as one with most words
Words are any sequence of chars excl. spaces and sentence-ending chars
i.e. commas would be part of words
# Example / Test Case:
see code

# Data Structures:
input string (text file)
output
substring longest sentence
integer number of words

# Algorithm:
import text file and assign to new initialized local variable
split all sentences into an array of individual strings
  - use regex delimiter to split between strings
initialize loc variable and assign transformation of sentences into subarrays of words
initialize loc variable and assign sorted of the array by size
puts the last element of the array by joining it together
puts the array size of last element

=end
# text = File.read('med2q1_text1.txt')
# sentences = text.split(/\.|\?|!/)
# sentence_arr = sentences.map {|sentence| sentence.split(' ')}
# sorted_arr = sentence_arr.sort {|a, b| a.size <=> b.size}

# puts "Longest sentence: #{sorted_arr[-1].join(' ')}"
# puts "Words in longest sentence: #{sorted_arr[-1].size}"

# puts

# text = File.read('gutenberg_text.txt')
# sentences = text.split(/\.|\?|!/)
# sentence_arr = sentences.map {|sentence| sentence.split(' ')}
# sorted_arr = sentence_arr.sort {|a, b| a.size <=> b.size}

# puts "Longest sentence: #{sorted_arr[-1].join(' ')}"
# puts "Words in longest sentence: #{sorted_arr[-1].size}"


# without regex:
=begin
# Alg
INIT LOC VAR words_arr = SPLIT TEXT INTO ARRAY OF WORDS
INIT LOC VAR start_idx = 0
INIT LOC VAR longest = 0
INT LOC VAR longest_sentence = []
ITERATE OVER INDEXES OF WORDS_ARR
START AT INDEX 0
INIT current_wrd = words_arr[idx]
  IF WORD AT CURRENT IDX DOES NOT HAVE A  ., ? or !, => NEXT
  ELSE 
  COMPARE LENGTH OF CURRENT SENTENCE TO LEN LONGEST SENTENCE
    IF CURRENT IS LONGER, REASSIGN longest_sentence TO ARRAY SLICE FROM         START INDEX TO CURENT INDEX 
UPDATE START_IDX, REASSIGN START_IND to IDX + 1
=end

text = File.read('med2q1_text1.txt')
words_arr = text.split(' ')
start_idx = 0
longest = 0
longest_sentence = []

words_arr.each_index do |idx|
  current_word = words_arr[idx]
  if ! current_word.include?('!') && ! current_word.include?('?') && ! current_word.include?('.')
    next
  else
    if words_arr[start_idx..idx].size > longest
      longest_sentence = words_arr[start_idx..idx]
    end
    longest = words_arr[start_idx..idx].size
    start_idx = idx + 1
  end
end

p longest_sentence.join(' ')
p longest