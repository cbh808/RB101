=begin
Q: what happens if the first argument is an Array?
A: It creates an array with the values of array num1
num2 times, see below

Q: What is happening ?
A: each value of array num1 is being iterated over num2 times and
  the value(s) is/are appended each iteration to new array 
  that is returned
=end

def multiply(num1, num2)
  num1 * num2
end

p multiply([3], 5)    # => [3, 3, 3, 3, 3]
p multiply([1, 2], 3) # => [1, 2, 1, 2, 1, 2]