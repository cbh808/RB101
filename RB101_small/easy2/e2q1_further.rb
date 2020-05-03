# Modify to use "Teddy" as the name if no name is entered.
# input 
  # string of name by user
  # empty string if none given by user
# output
  # string with input name & random age

def output_name_age(name="Teddy")
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

puts "What's your name?"
name = gets.chomp

if name == ''
  output_name_age 
else
  output_name_age(name)
end
