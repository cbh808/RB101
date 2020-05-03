=begin
# Problem
# inputs
  integer as argument to method
# outputs 
  square of argument
# rules
  use multiply method from the "Multiplying Two Numbers"

# Example / Test Case
square(5) == 25
square(-8) == 64

# Data Structure 
  # integer

# Algorithm
  define 'squares' method with one argument
  call multiply within 'squares' method using previous argument 
  as both args of multiply
=end
# Code
def multiply(num1, num2)
  num1 * num2
end

def square(number)
  multiply(number, number)
end

square(3) == 9
square(5) == 25
square(-8) == 64
