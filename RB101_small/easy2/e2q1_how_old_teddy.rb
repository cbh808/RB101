=begin
# Problem
# inputs
  # none
# outputs 
  # generate random integer 'age' within range 20..200
  # string to give resulting age

# Example / Test Case
Teddy is 111 years old
Teddy is 20 years old
Teddy is 200 years old

# Data Structure 
  # integer (randomly generated)
  # string

# Algorithm
  # generate number between 20 and upto and including 200
    & assign to variable
  # output result by string interpolation
=end
# Code
teddys_age = rand(20..200)
puts "Teddy is #{teddys_age} years old!"
