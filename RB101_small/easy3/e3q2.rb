=begin
# Problem
# inputs
  #  two positive integers from user after being prompted
  #  assume valid inputs, no validation 
# outputs 
  # results of addition, subtraction, product, quotient, 
  remainder, and power of the two numbers

# Example / Test Case
  ==> Enter the first number:
  23
  ==> Enter the second number:
  17
  ==> 23 + 17 = 40
  ==> 23 - 17 = 6
  ==> 23 * 17 = 391
  ==> 23 / 17 = 1
  ==> 23 % 17 = 6
  ==> 23 ** 17 = 141050039560662968926103

# Data Structure 
  # integers
  # strings with interpolation

# Algorithm
  # define array with operators + - * / % **
  # define result method to puts output string
  # prompt user for two integers (without validation)
  # assign user integers to variables
  # iterate over operator array, do calculation for each
  #   operator and puts the result
=end

operators = %w(+ - * / % **)

def output_result(number1, number2, operator, result)
  puts "==> #{number1} #{operator} #{number2} = #{result}"
end

puts "==> Enter the first number:"
first_number = gets.chomp.to_i

puts "==> Enter the second number:"
second_number = gets.chomp.to_i

operators.each do |operator|
  if operator == '+'
    answer = first_number + second_number
  elsif operator == '-'
    answer = first_number - second_number
  elsif operator == '*'
    answer = first_number * second_number
  elsif operator == '/'
    answer = first_number / second_number
  elsif operator == '%'
    answer = first_number % second_number
  else
    answer = first_number ** second_number
  end
  output_result(first_number, second_number, operator, answer)
end

# to use floats to_i changes to to_f
# edge cases with modulo would need to be looked into
# edge case div by 0 not checked
