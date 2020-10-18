=begin
write methods that computes difference between
 -square of the sum of the first n positive integers
 -sum of the squares of the first n positive integers.
# inputs:
integer n as arg
# outputs:
integer of result
# rules:

# Example / Test Case:
see code

# Data Structures:
input integer (n)
output integer

# Algorithm:
define method sum_square_difference with one arg (int)
calculate all integers from 1 to n and carry out the calculations
 (1 + ... + n)**2  - (1**2 + ... + n**2)
e.g. use range & inject
(1..n).inject(:+) - (1..n).inject(0) {|sum, x| sum += x**2}
e.g. range and sum and map
(1..n).sum**2 - (1..n).map {|x| x**2}.sum
=end 
def sum_square_difference(n)
  (1..n).inject(:+)**2 - (1..n).inject(0) {|sum, x| sum += x**2}
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
