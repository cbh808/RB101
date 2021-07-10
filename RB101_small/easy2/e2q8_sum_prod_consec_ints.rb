=begin
# Problem
# inputs
  #  integer > 0
  #  string  input from user, 
    sum (for sum of all integers from 1 to integer), or 
    producs (for product of all integers from 1 to integer)
# outputs 
  # operation of product or sum
  # string output

# Example / Test Case
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

# Data Structure 
  # string prompt
  # integers for operations
  # string output

# Algorithm
  # prompt user for integer
  # prompt user for sum/product choice
  # calculate sum
  # calculate product
  # output based on choice with string interpolation
=end
# Code
puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

sum = 0
1.upto(integer) {|int| sum += int} # returns '1' but updates 'sum'

product = 1
1.upto(5) {|int| product *= int} # returns '1' but updates 'product'

if choice == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "That's not a valid choice - try again."
end
