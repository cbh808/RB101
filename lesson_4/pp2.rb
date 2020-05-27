# input: hash with string keys and integer values
# output: sum of the integers stored in values
# Alg1:
# define empty array
# iterate over hash, passing each value to array
# sum the values stored in the elements of array.


ages = { "Herman" => 32, "Lily" => 30, 
        "Grandpa" => 5843, "Eddie" => 10, 
        "Marilyn" => 22, "Spot" => 237 }

age_array = []
ages.each do |key, value|
  age_array << value
end

p age_array.inject(:+)

#Alg2
# use inject directly on hash
p ages.values.inject(:+)


