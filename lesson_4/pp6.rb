# input: array of words
# output: amended array w/ elements shortened to first 3 letters only
# Alg1:
# iterate over array of words
# delete characters[3..-1] destructively
# return array

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3]}
