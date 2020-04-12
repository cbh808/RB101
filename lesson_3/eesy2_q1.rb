# use 3 different ways to see if 'Spot' is in hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.is_Spot_in_there? # undefined method `is_Spot_in_there?
p ages.key?("Spot") 
p ages.has_key?("Spot") # same as .key? so doesn't count

p ages.member?("Spot")

p ages.include?("Spot")
