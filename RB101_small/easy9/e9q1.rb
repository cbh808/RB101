=begin
# inputs:
2 arguments, an array and a hash. 
The array will contain 2 or more elements when combined with adjoining spaces, will produce a person's name. 
The hash will contain two keys, :title and :occupation, and the appropriate values
# outputs:
return greeting that uses person's full name, and mentions the person's title and occupation
# rules:

# Example / Test Case:
see code

# Data Structures:
input array and hash as args
output
puts string

# Algorithm ref
define a method w/ 2 args (arr, hsh)
print string using string interpolation 
  - for array: join array with spaces as delimiters
  - for hsh: obtain hash values by referencing them through keys
=end 

def greetings(name, labels)
  puts "=> Hello, #{name.join(' ')}! Nice to have a #{labels[:title]} #{labels[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
greetings(['Bruce', 'Lee'], { title: 'Master', occupation: 'Martial Artist' })