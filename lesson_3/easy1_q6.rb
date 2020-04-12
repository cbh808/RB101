# show 2 ways to put 'Four score and' at front of string

# EXAMPLE 1
famous_words = "seven years ago..."
famous_words.insert(0, 'Four score and ')
p famous_words
# EXAMPLE 2
famous_words = "seven years ago..."
addtional_words = 'Four score and '
famous_words = "#{addtional_words}" + famous_words
p famous_words
# EXAMPLE 3
famous_words = "seven years ago..."
famous_words.prepend("Four score and ")
p famous_words
# EXAMPLE 4
famous_words = "seven years ago..."
p "Four score and " << famous_words
