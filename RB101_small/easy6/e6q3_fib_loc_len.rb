=begin
# Problem
# inputs:
number of fibonacci digits specified as an argument 
# outputs:
find index of 1st Fibonacci number that has arg number of digits
# rules
The first two Fibonacci numbers are 1 and 1
The first Fibonacci index has value of 1
arg value is >= 2

# Example / Test Case
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

# Data Structure 
input: integer (arg)
output: integer (index of fibonnachi with length arg)

# Algorithm refactor
define method w/ one arg (int)
initialize fib_array with first 6 indexes of fib sequence
loop
  calculate fib numbers starting from index 7
   append sum of last two values of fib_array to fib_array
  find length of fib number after each iteration
  break if fib length == arg
    fib length is the size of last value converted to string
end
return int fib_array.size - 1
=end

def find_fibonacci_index_by_length1(digits)
  fib_arr = [1, 1, 2, 3, 5, 8]
  until fib_arr.last.to_s.size >= digits
    fib_arr << fib_arr[-2..-1].sum
  end
  fib_arr.size
end

p find_fibonacci_index_by_length1(2) == 7
p find_fibonacci_index_by_length1(10) == 45
p find_fibonacci_index_by_length1(100) == 476
p find_fibonacci_index_by_length1(1000) == 4782

=begin
# Algorithm original
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

puts
p find_fibonacci_index_by_length(1) == 1
p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782

# note: LS solution does not use an array to store fib
# numbers as the loop progresses. The data structure is
# not required as it is possible to get to the solution by
# calculating the fib numbers while progressing through the 
# sequence without storing the numbers no longer needed:

def find_fibonacci_index_by_length_LS(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end


