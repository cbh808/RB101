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
# Algorithm:
define method
extract info from args within string interpolation
=end 

def greetings(array, hash)
  puts "Hello #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
greetings(['Bruce', 'Lee'], { title: 'Master', occupation: 'Martial Artist' })