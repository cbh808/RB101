=begin
# inputs:
two arguments: first is starting number, second is ending number
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

# Algorithm ref
define a method w/ two args (num1, num2)
init loc var and assign empty string
iterate over range of numbers
concatenate string as follows:
if num % 5 && num % 3 equal to 0, 'FizzBuzz' + a comma and space
if num % 5, 'Buzz' + a comma and space
if num % 3, 'Fizz' + a comma and space
else number converted to str + a comma and space
print string slice from first character to index -3
=end 


def fizzbuzz(n1, n2)
  resulting_string = ''
  n1.upto(n2) do |num|
    if num % 5 == 0 && num % 3 == 0
      resulting_string += 'FizzBuzz, '
    elsif num % 5 == 0
      resulting_string += 'Buzz, '
    elsif num % 3 == 0
      resulting_string += 'Fizz, '
    else
      resulting_string += num.to_s + ', '
    end
  end
  puts " -> #{resulting_string[0..-3]}"
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz