# input: string assigned to variable
# output: hash counting number of times each character appears in string
# rules: Upper and lower case letters are different chars
# exclude spaces

# Alg:
# convert string to array of characters
# create new array consisting of unique characters
# iterate over new array defining hash keys on new array elements
# calculate values for each key by iterating over first array

statement = "The Flintstones Rock"

array1 = statement.chars
array2 = array1.uniq

hash = {}
p array2.each { |char| hash[char] = array1.count(char)}
hash.delete(' ')

