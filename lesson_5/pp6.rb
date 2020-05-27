# print out the name, age and gender of each family member
# input: hash
# output: hard coded string using parameters from hash
# data structures: hash / string
# algorithm:
# iterate over hash
# use string interpolation using selection of desired parameter
# example output:
# "Herman is a 32-year-old male."

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, values|
  puts "#{name} is a #{values['age']}-year-old #{values['gender']}."
end
