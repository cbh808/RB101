=begin
# inputs:

# outputs:

# rules:

# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:

=end 

def fibonacci_last(n)
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
  str = fib_array[n].to_s
  str[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)