=begin
# Problem
  # inputs
  0, positive integer or negative integer
  assume correct input given

  # outputs 
  string representation of number input, with 
  '+' or '-' sign at front of number
  no sign for '0'

# rules
  no use of standard conversion methods

# Example / Test Case
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == 0

# Data Structure 
  # 0, positive integer or negative integer
  # string representing number with + or - sign, or 0

# Algorithm
  # if number == 0 set variable prefix = ''
  # else prefix is result of ternary number < 0? '-' : '+'
  # if number < 0 multiply by -1
  # run previous solution for 0 or positive integers
  # concatenate prefix onto number
=end

# Code
CONVERT_HASH = { 0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
                  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"}

def determine_prefix(number)
  if number == 0
    prefix = ''
  else
    prefix = number < 0 ? '-' : '+'
  end
end

def integer_to_string(number)
  prefix = determine_prefix(number)
  
  number *= -1 if number < 0
  number_array = number.digits.reverse!
  char_array = number_array.map {|value| CONVERT_HASH[value]}

  prefix + char_array.join
end

p integer_to_string(4321) == '+4321'
p integer_to_string(0) == '0'
p integer_to_string(-123) == '-123'