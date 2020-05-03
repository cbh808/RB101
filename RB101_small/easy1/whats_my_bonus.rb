# Written problem statement
# Write a method that takes two arguments, 
# positive integer and a boolean, and calculates 
# the bonus for a given salary. If boolean true, 
# the bonus should be half of the salary. If 
# false, the bonus should be 0.

# Problem
  # inputs
    # positive integer (salary) as argument to method
    # boolean as 2nd argument to method
  # outputs 
    # return integer (bonus)

# Example / Test Case
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# puts calculate_bonus(1_000_000, true) == 500000

# Data Structure 
  # integer
  # boolean
  # output integer

# Algorithm
  # define method with 2 arguments, integer, boolean
  # if statement to evaluate boolean with corresponding result
  # 

# Code
def calculate_bonus(salary, boolean)
  if boolean
    salary/2 
  else
    0
  end
end

# note: can be shortened with ternary:
# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0 
# end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
puts calculate_bonus(1_000_000, true) == 500000
