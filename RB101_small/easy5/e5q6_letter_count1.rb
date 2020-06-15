=begin
# Problem
# inputs  
method that takes a string with one or more space separated words
# outputs  
return hash that shows number of words of different sizes
# rules
Words are any string of chars that do not include a space 

# Example / Test Case
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# Data Structure 
input string
integer sizes
output hash of integer keys and integer values 

# Algorithm
-split input string into array of individual words
-map array to array of string lengths, calling uniq determines the keys
-Iterate over string length array, count the number of each instance of 
key value 6 add key and value to hash
=end 

def word_sizes(string)
  word_size_hash = {}

  length_array = string.split.map { |word| word.length }
  keys = length_array.uniq

  keys.each do |key|
    word_size_hash[key] = length_array.count(key)
  end
  word_size_hash
end
 

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# alternative initiating hash with default value 0 and counting instances directly:
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end 