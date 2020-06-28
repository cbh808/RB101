=begin
# Problem
# inputs 
number of digits specified as an argument 
 
# outputs  
calculates and return index of first Fibonacci number that has that number of digits
# rules
  The first Fibonacci number has index 1

# Example / Test Case
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

# Data Structure 
integer argument as input
array of fibonacci numbers as values
array of fibonacci number lengths
output integer index of fibonnachi with length 

# Algorithm
define method with integer argument
create array with first two fib numbers (0 and 1) as value of elements 0 and 1
have counter to be used to determine and assign value of each fib. number to array
start loop
calculate next fibonnaci number and append to array.
check if length of element added == method argument, if y break and return index
if not, increment index and start next iteration  
=end 

def find_fibonacci_index_by_length(length)
  return 1 if length == 1
  fib_arr = [0, 1]
  i = 2

  loop do
    fib_arr << fib_arr[i-1] + fib_arr[i-2]
    break if fib_arr[i].to_s.size >= length
    i += 1 
  end
  i
end

p find_fibonacci_index_by_length(1) == 1
p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782