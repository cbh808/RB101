=begin
# Problem
  # inputs
    # string user name after input by user
  # outputs 
    # greeting, conditional on input
# Example / Test Case
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

# Data Structure 
  # input string
  # output string 

# Algorithm
  # request name
  # gets string and assign to var. name
  # check if string[-1] is '!'
  # if Y, relevant output with upcase using str. interpolation
  # else, relevant output with str. interpolation
=end
# Code
puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name[0..-2].upcase}. WHY ARE WE SCREAMING?"
  # alternative is to use name.chop in lieu of name[0..-2]
else
  puts "Hello #{name}."
end