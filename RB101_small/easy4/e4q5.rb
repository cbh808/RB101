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
pmultisum(20) == 98
pmultisum(2) == 0
pmultisum(3) == 3
pmultisum(5) == 8
mulitsum(10) == 33
pmultisum(1000) == 234168

# Data Structure 
  input integer
  output integer

#Algorithm:
define a method that takes one arg, an integer
set default value of method parameter == 2 in case no arg provided
initialize a local variable and assign it to an empty array
iterate over all numbers in the range from 2 up to number
  -if the number is a multiple of 3 or 5, append it to an array
sum the array and use as return value
=end

# Code
def multisum(integer=2)
  factors = []                  #alt: sum = 0
  for i in 2..integer
    if i % 3 == 0 || i % 5 == 0
      factors << i              #alt: sum += i
    end
  end
  factors.sum                   #alt: sum
end

p multisum(20) == 98
p multisum(2) == 0
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
p multisum() == 0