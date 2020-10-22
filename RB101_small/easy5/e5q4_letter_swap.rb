=begin
# Problem
swap first and last letter of every word in a string
# inputs
string of words separated by spaces
# outputs
return string in which the first and last letters of every word are swapped.
# rules
every word contains at least one letter
string will always contain at least one word
each string contains nothing but words and spaces

# Example / Test Case
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Data Structure
string
string

# Algorithm
convert string to array of strings
swap string[0] with string[-1]
join elements of modified array
=end

def swap(string)
  array_of_words = string.split(' ')
  q = swap_first_last_letters(array_of_words)
  q.join(' ')
end

def swap_first_last_letters(array)
    array.each do |word|
      a = word[0]
      word[0] = word[-1]
      word[-1] = a
    end
    array
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Note: common Ruby idiom: a, b = b, a
# can be used in swap_first_last_letters method
# for reassignment of two variables to each other

# Algorithm refactor
  # define method w one arg
  # convert string to array of words
  # iterate over each word
  # swap first and last char of each word through reassignment (mutate)
  # convert mutated array to string and return modified string

def swap2(string)
  words = string.split(' ')

  words.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end

  words.join(' ')
end

puts
p swap2('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap2('Abcde') #== 'ebcdA'
p swap2('a') #== 'a'
