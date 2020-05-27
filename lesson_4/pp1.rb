# input: array of strings
# output: hash 
# rules:
  # names are the keys 
  # values are the positions in the array (as integer)
# Algorithm:

# iterate over array
# convert elements of arrays to keys of hash
# assign index of array as values
# hash[element] = index of element (as integer)

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}

flintstones.each_with_index do |element, index|
  hash[element] = index
end

p hash