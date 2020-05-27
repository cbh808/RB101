# input: string with one or more words
# output: string adapted with first letter of each word capitalized
# rules: All words incl. prepositions e.g. 'of' are capitalized

# Alg.
# split string into array of strings
# iterate through strings and upcase each first letter

words = "the flintstones rock on wednesday"

array = words.split(' ')
array.map! { |word| word[0].upcase + word[1..-1]}
array.join(' ')

# alt: words.split.map { |word| word.capitalize }.join(' ')