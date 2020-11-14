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
- define method w one arg (string)
- define local var and assing empty hash
- split input string into array of individual words
- transform array to array of string lengths
- determine uniqe values to determine the keys
- Iterate over string length array, count the number of each instance of 
  key value & assign to corresponding key of hash
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

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# alternative initiating hash with default value 0 and counting instances directly:
def word_sizes1(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

puts
p word_sizes1('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes1('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes1("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes1('') == {}

# another approach, less direct
def word_sizes2(string)
  words = string.split(' ')
  hash = {}

  sizes = words.map {|word| word.length} # get array of sizes
  sizes.each {|num| hash[num] = 0} # define keys & set values to 0
  sizes.each {|num| hash[num] +=1} # update values
  
  hash
end

puts
p word_sizes2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes2("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes2('') == {}
