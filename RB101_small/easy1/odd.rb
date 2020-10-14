=begin
# Written problem statement
# Write a method that takes one integer argument,
# which may be positive, negative, or zero. This
# method returns true if the number's absolute value
# is odd. You may assume that the argument is a valid
# integer value.

# Problem
  # inputs
  one integer as argument to method

  # outputs
  return true if integer's absolute value is odd
  return false othewise

  # rules
  assume valid argument given
  no using #odd? or #even? in solution

# Example / Test Case
  puts is_odd(2)     # => false
  puts is_odd?(5)    # => true
  puts is_odd?(-17)  # => true
  puts is_odd?(-8)   # => false
  puts is_odd?(0)    # => false
  puts is_odd?(7)    # => true

# Data Structure
  # integer argument to method
  # boolean as return value of method

# Algorithm
  # define method that determines abs value of integer
  # determine if abs value is odd and return result
  
=end

# Code
def is_odd?(integer)
  integer.abs % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# LS solution is:
def is_odd?(number)
  number % 2 == 1
end

  # not necessary to change negative int to abs. number
  # modulus of negative number % 2 evaluates 'oddness' directly
  # LS solution does not work for remainder calculation
  # integer.abs above works if not sure if `%` acts either as 'modulo' or 'remainder'

# to use .remainder directly:
def is_odd?(integer)
  integer.abs.remainder(2) == 1
end

# -same as-

def is_odd?(integer)
  absolute = integer.abs
  absolute.remainder(2) == 1
end
