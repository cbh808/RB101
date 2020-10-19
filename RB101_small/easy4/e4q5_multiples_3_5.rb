=begin
# Problem
write method that searches for multiples of 3 and 5 up to a given number
sum the multiples
# inputs
  input integer > 1 (as arg to method)
# outputs 
  sum of 3, 5, and their muliples up to/incl. number provided
  e.g. if the supplied number is 20, the result should 
    be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)

# Example / Test Case
multisum(20) == 98
multisum(2) == 0
multisum(3) == 3
multisum(5) == 8
mulitsum(10) == 33
multisum(1000) == 234168

# Data Structure 
  input integer
  output integer

# Algorithm
define method with 1 arg (integer)
iniitialize local variable 'sum' = 0
iterate over the range 1..integer
 sum += num if num % 3 == 0 || num % 5 == 0
return sum

use reduce

def multisum(integer)
  sum = 0
  (1..integer).each do |num|
    sum += num if num % 3 == 0 || num % 5 == 0
  end
  sum
end

def multisum(integer)
  (1..integer).reduce(0) {|sum, num| sum += num if num % 3 == 0 || num % 5 == 0}
end






#Algorithm:
define a method that takes one arg, an integer
set default value of method parameter == 2 in case no arg provided
initialize a local variable and assign it to an empty array
iterate over all numbers in the range from 2 up to number
  -if the number is a multiple of 3 or 5, append it to an array
sum the array and use as return value
=end

# Code
def multisum(integer)
  sum = 0
  (1..integer).each do |num|
    sum += num if num % 3 == 0 || num % 5 == 0
  end
  sum
end

p multisum(20) == 98
p multisum(2) == 0
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
p multisum(0) == 0