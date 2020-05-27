# input: array of words
# output: index of first word starting with "Be"
# Alg1:
# Iterate over array elements
# Checking first two characters if match string "Be"
# Return index if yes and stop iterating
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.find_index { |name| name[0..1] == "Be" }  #alt: name[0,2]