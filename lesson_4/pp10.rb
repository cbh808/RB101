# input: hash with a string name, 
# each value is a hash with two name/hash pairs, 'age'/integer & 'gender'/string
# output: modified hash with addtional value, a name 'age_group'
# with value of 'age_group' based on value of the 'age' integer
# rules: age 0-17 = kid, age 18-64 = adult, +65 = senior

# Alg:
# Iterate over hash and name/value sub-hashes
# check age and based on number value, classify, e.g kid
# create new k/v pair with classification

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, _| 
  if munsters[name]['age'] < 18
    munsters[name]['age_group'] = 'kid'  
  elsif munsters[name]['age'] > 64
    munsters[name]['age_group'] = 'senior'
  else
    munsters[name]['age_group'] = 'adult'
  end
end

# refactor to simplify
munsters.each do |name, attributes| 
  if attributes['age'] < 18
    attributes['age_group'] = 'kid'  
  elsif attributes['age'] > 64
    attributes['age_group'] = 'senior'
  else
    attributes['age_group'] = 'adult'
  end
end

# alt1: refactor using case and class Range
munsters1 = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters1.each do |name, attributes| 
  case attributes['age']
  when 0...18
    attributes['age_group'] = 'kid'
  when 18...65
    attributes['age_group'] = 'adult'
  else
    attributes['age_group'] = 'senior'
  end
end
