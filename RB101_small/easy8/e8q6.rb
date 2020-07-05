=begin
# inputs:
two arguments: first is starting number, second is ending number.
# outputs:
Print out all numbers between the two numbers AND rules below
# rules:
if a number is divisible by 3, print "Fizz"
if a number is divisible by 5, print "Buzz"
if a number is divisible by 3 and 5, print "FizzBuzz"
# Example / Test Case:
see code

# Data Structures:
input two integers as args
output string output

# Algorithm:
home loop through numbers:
use case logic
if not div by 3 or not div 5 print number.to_s
if div by 3 but not div by 5 => print ', Fizz'
if div by 5 but not div by 3 => print ', Buzz'
else puts ', FizzBuzz'
=end 
def fizzbuzz(low_integer, high_integer)
  low_integer.upto(high_integer) do |x|
    if x == 1
      print "1"
    elsif (x%3 != 0) && (x%5 != 0)
      print ", #{x}"
    elsif x%3 == 0 && x%5 != 0
      print ", Fizz"
    elsif x%3 != 0 && x%5 == 0
      print ", Buzz"
    else
      print ", FizzBuzz"
    end
  end
end



fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz