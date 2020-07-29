=begin
# inputs:
integer 
n as nth p fibonacci number to be returned

# outputs:
nth p fibonacci number

# rules:
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2

above definition is not following F(0) = 0 and 
F(n) = F(n - 1) + F(n - 2) where n > 1

use recursive method
n will be >= 1

# Example / Test Case:
see code

# Data Structures:
input integer
output integer

# Algorithm:
define p fibonacci method
define fib(1) & fib(2) == 1
calculate fib(n) with call to fibonaci method\
=end 

def fibonacci(n)
  if n <= 2   
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

# alternative that allows fibonacci(0)
# def fibonacci(n)
#   if n < 2   
#     
#   else
#     fibonacci(n-1) + fibonacci(n-2)
#   end
# end