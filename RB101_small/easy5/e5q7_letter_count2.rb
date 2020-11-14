=begin
# Problem
same as previous problem but get rid of non-letters from word count

# Algorithm I
create ALPHABET constant
to get key, subtract number of alphabetic chars from overall size


=end

ALPHABET = ('a'..'z').to_a

def word_sizes(string)
  word_size_hash = {}
  word_array = string.downcase.split
  length_array = convert_words_to_lengths(word_array)

  keys = length_array.uniq
  keys.each do |key|
    word_size_hash[key] = length_array.count(key)
  end
  word_size_hash
end

def convert_words_to_lengths(word_array)
  length_array = []
  word_array.each do |word|
    i = 0
    word.chars.each do |char|
      if ALPHABET.include?(char)
        i += 1
      end
    end
    length_array << i
  end
length_array
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# alternative with delete regex, String#delete
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

word_sizes1('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes1('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes1("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes1('') == {}
