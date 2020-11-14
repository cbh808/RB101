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
while i <= n then append sum of two previous array entries
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


=begin
Problem (explicit reqs / implicit reqs)
Write procedural fibonacci sequence

inputs:
integer n
outputs:
integer, nth fib. number

Rules:
procedural - no recursion
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2

n will be > 2

Example / Test Case:
see code

Data Structures:
see problem description

Algorithm ref:
define method with args (n)
STORE FIB. NUMBERD IN AN ARRAY THAT HAS FIRST 3 FIB NUMBERS INSERTED AT START
e.g. [0, 1, 1]
for n > 2, CALCULATE FIB NUMBER
APPEND VALUES FROM idx 3..n to FIB ARRAY
(3..n).each do |idx|
  FIB << fibonacci[idx-2..idx-1].sum
end
RETURN idx -1 
=end

def fibonacci(n)
  fib_arr = [0, 1, 1]
  (3..n).each do |idx|
    fib_arr << fib_arr[idx-2..idx-1].sum
  end
  fib_arr[n]
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
