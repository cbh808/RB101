=begin
The reverse_sentence method should return a new string 
with the words of its argument in reverse order, 
without using any of Ruby's built-in reverse methods. 
Change the code below that raises an error so that it behaves as expected.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words 
    # here we are adding a string to an array which throws a TypeError.
    # NOTE: `words[i] + reversed_words` is shorthand for `words[i].+(reversed_words)`,
    # therefore we invoked String#+ with an array as argument
    i += 1
  end

  reversed_words.join(' ')
end

=end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

def reverse_sentence1(sentence)
  words = sentence.split(' ')
  p words
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end
  p words
  reversed_words.join(' ')
end

puts
p reverse_sentence1('how are you doing')