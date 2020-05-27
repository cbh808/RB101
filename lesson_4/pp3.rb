# input: hash with string keys and integer values
# output:hash with key/value pairs removed if value > 100
# mutate original hash
# Alg1:
# search values and remove key/value pair if value > 100

ages = { "Herman" => 32, "Lily" => 30, 
  "Grandpa" => 5843, "Eddie" => 10, 
  "Marilyn" => 22, "Spot" => 237 }

ages.reject! do | _, value|
  value >= 100
end

p ages

# alt: ages.keep_if { |_, value| value < 100 }