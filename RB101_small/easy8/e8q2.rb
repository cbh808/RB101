=begin
#Create a simple mad-lib program
# inputs:
prompts for a noun, a verb, an adverb, and an adverb
# outputs:
injects those into a story that you create
# rules:

# Example / Test Case:
Enter a noun: dog
Enter a verb: walk
Enter an adverb: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

# Data Structures:
input: user generated strings
output: programme generated string

# Algorithm:
gets.chomp various forms of words, noun, verb, adverb, adverb
generate a sentence from the input:
  use a static form with string concatenation
  use a dynamic form that chooses randomly order of verb/adverb, noun/adjective
=end 



def get_word(word_type)
  puts "Enter a #{word_type}:"
  gets.chomp
end

noun = get_word('noun')
verb = get_word('verb')
adjective = get_word('adjective')
adverb = get_word('adverb')

puts "In the begginning, #{noun}s, especially #{adjective} #{noun}s, were kindly requested to #{verb} #{adverb}."