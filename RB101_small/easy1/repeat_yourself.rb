=begin
# Problem
  # inputs
    # string as argument to method
    # integer > 0 as 2nd arg to method
  # outputs 
    # string printed integer amount of times
    # each on own line

# Example 
Hello
Hello
Hello
# validation if integer input not valid:
Please try again and use positive integer

# Data Structure 
  # string
  # integer

# Algorithm
  # define method with 2 args
  # if input not valid, print error message and break
  # if valid input, loop integer times
  # puts string each pass of loop
=end
# Code

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

  # alternative to for loop: 
  #   integer.times do
  #     puts string_to_repeat
  #   end
