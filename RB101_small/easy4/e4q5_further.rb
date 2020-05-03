=begin
# Problem 
  Investigate Enumerable.inject (also known as Enumerable.reduce)
  Q: How might this method be useful in solving this problem? 
  A: concise way to sum the elements of an array
  Q: Which is clearer solution, summing or using .inject? 
  A: clearer is to sum factors because inject requires
  specific knowledge of Array#inject method

  Q: Which is more succinct?
  A: don't see advantage in succinctness to either way.
  Enumerable#inject requires to handle edge case with integer 2 
  either by setting intial value of array with a 0 value, [0], or 
  setting inject argument initial to 0 (#inject(0, :+))

# Algorithm
  create array = []
  loop through all integers from 2..number
    if factor, add multiple to array
  sum elements of array with Enumerable.inject
  check tests
=end
# Code

def multisum(integer)
  factors = []                  
  for i in 2..integer
    if i % 3 == 0 || i % 5 == 0
      factors << i              
    end
  end
  factors.inject(0, :+)                   
end

multisum(20) == 98
multisum(2) == 0
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168