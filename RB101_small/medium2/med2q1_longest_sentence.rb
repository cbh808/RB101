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

text = File.read('med2q1_text1.txt')
sentences = text.split(/\.|\?|!/)
sentence_arr = sentences.map {|sentence| sentence.split(' ')}
sorted_arr = sentence_arr.sort {|a, b| a.size <=> b.size}

puts "Longest sentence: #{sorted_arr[-1].join(' ')}"
puts "Words in longest sentence: #{sorted_arr[-1].size}"

puts

text = File.read('gutenberg_text.txt')
sentences = text.split(/\.|\?|!/)
sentence_arr = sentences.map {|sentence| sentence.split(' ')}
sorted_arr = sentence_arr.sort {|a, b| a.size <=> b.size}

puts "Longest sentence: #{sorted_arr[-1].join(' ')}"
puts "Words in longest sentence: #{sorted_arr[-1].size}"
