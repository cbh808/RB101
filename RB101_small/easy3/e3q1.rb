=begin
# Problem
# inputs
  6 numbers from user, assume valid inputs
# outputs 
  printed message if 6th input appears within first 5 inputs

# Example / Test Case
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].


# Data Structure 
  # array to hold the numbers that are entered
  # strings requesting numbers
  # 
  # 

# Algorithm
  # define array 'question_number' for 6 strings, '1st'...'last'
  # define empty array 'user_inputs' for input values
  # reqest numbers using string interpolation to use array 'question_number'
  # append values (<<) of user input to 'user_inputs' array
  # compare 6th value to first 5 values in user_inputs
  # give output based on comparison result
=end

# Code
question_number = %w(1st 2nd 3rd 4th 5th last)
user_inputs = []

question_number.each do |element|
  puts "==> Enter the #{element} number:"
  user_inputs << gets.chomp.to_i
end

last_value = user_inputs.pop
if user_inputs.any? { |value| value == last_value } 
  puts "The number #{last_value} appears in #{user_inputs}."
else
  puts "The number #{last_value} does not appear in #{user_inputs}."
end