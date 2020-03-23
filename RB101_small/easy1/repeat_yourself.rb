# Write a method that takes two arguments,
# a string and a positive integer,
# and prints the string as many times as the integer indicates.

def repeat_yourself(string_to_repeat, integer)
  if integer <= 0 || integer % 1 != 0
    puts "Please try again and use positive integer."
  else
    for i in 1..integer
    puts string_to_repeat
    end
  end
end

repeat_yourself("Howdy world", 0)
repeat_yourself("Howdy world", 1.1)
repeat_yourself("Howdy world", -1)
repeat_yourself("Howdy world", 6)

# Problem
  # inputs
    # string
    # integer > 0
  # outputs 
    # string printed integer amount of times
    # each on own line

# Example 
  # input
    # repeat('Hello', 3)
  # Output:
    # Hello
    # Hello
    # Hello
# input
    # repeat('Hello', 0)
  # Output:
    # Please try again and use positive integer

# Data Structure 
  # string
  # integer

# Algorithm
  # define method with inputs
  # check if input is valid, if not message
  # else loop integer times
  # puts string each pass of loop

# Code
  # alternative to for loop: 
  #   interger.times do
  #     puts string_to_repeat
  #   end