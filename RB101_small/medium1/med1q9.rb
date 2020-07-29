=begin
# inputs:
integer 
n as nth p fibonacci number to be returned

# outputs:
nth p fibonacci number
# rules:
use procedural method (no resursion)
# Example / Test Case:
see code

# Data Structures:
input integer
develop array of size n+1
output integer (summed array)

# Algorithm:
define method with integer arg
loop from 0 to n+1
while i < 2 then append array with i
while i < n+1 then append sum of two previous array entries
return sum of array elements
=end 

def fibonacci(n)
  fib_array = []
  i = 0
  while i < 2
    fib_array << i
    i +=1
  end

  while i <= n
  fib_array << (fib_array[i - 1] + fib_array[i - 2])
  i += 1
  end
  
  fib_array[n]
end

p fibonacci(0) == 0
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
