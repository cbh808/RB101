=begin
# Problem 
  Investigate Enumerable.inject (also known as Enumerable.reduce)
  Q: How might this method be useful in solving this problem? 
  A: concise way to sum the elements of an array
  Q: Which is clearer solution, summing or using .inject? 
  A: clearer is to sum factors because inject requires
  initial change of data structure type in order to use inject

  Q: Which is more succinct?
  A: don't see advantage in succinctness to either way.
  Enumerable#inject requires to handle edge case with integer 2 
  either by setting intial value of array with a 0 value, [0], or 
  setting inject argument initial to 0 (#inject(0, :+))

# Algorithm
  create array = []
  loop through all integers from 1..number
    if factor, add multiple to array
  sum elements of array with Enumerable.inject
=end
# Code

def multisum(integer)
  array = []
  (1..integer).each do |num|
    array << num if num % 3 == 0 || num % 5 == 0
  end

  array.inject(0){|sum, n| sum + n}
end

p multisum(20) == 98
p multisum(2) == 0
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168