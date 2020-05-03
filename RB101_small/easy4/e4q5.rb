=begin
# Problem
# inputs
  input integer > 1 
  integers of 2 numbers for which multiples to be determined, i.e. 3 & 5
# outputs 
  sum of 3, 5, and their muliples up to/incl. number
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
  array to hold numbers to sum
  integers as input/output 

# Algorithm
  create empty array = []
  loop through all integers from 2..number
    if factor, add multiple to array
  sum elements of array 
  check tests
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

multisum(20) == 98
multisum(2) == 0
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168