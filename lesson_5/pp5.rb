# total age of the male members
# input: hash, each key has hash as value
# output: summ of ages if gender == 'male'
# data structure: hash
# algorithm
# define empty array
# iterate over hash, appending integers from males to array
# sum array

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_ages = []

munsters.each do |_, value|
  if value['gender'] == 'male'
    male_ages << value['age']
    p male_ages
  end
end

p male_ages.sum

# alt:
male_ages1 = 0

munsters.each_value do |value|
  if value['gender'] == 'male'
    male_ages1 += value['age']
  end
end

p male_ages1