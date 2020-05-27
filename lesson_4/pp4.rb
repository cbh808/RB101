# input: hash with string keys and integer values
# output: lowest integer value
# Alg1:
# iterate over hash values, comparing value of each element
# store lowest value of each comparison
# return the lowest integer
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min