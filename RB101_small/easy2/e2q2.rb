=begin
# Problem
# inputs
  float room length from user (assume valid input)  
  float room width from user (assume valid input)
# outputs 
  float total room area 
  float converted total area
# rules
  1 square meter == 10.7639 square feet

# Example / Test Case
  # Enter the length of the room in meters:
  # 10
  # Enter the width of the room in meters:
  # 7
  # The area of the room is 70.0 square meters (753.47 square feet).

# Data Structure 
  # strings to request input
  # floats for numbers
  # floats for results

# Algorithm
  # prompt user
  # gets input without validation
  # define method to calculate m area with user input as args
  # set sq_feet equal to converstion from m to ft
  # puts results with string interpolation

# Code (see above)
puts "This program calculates area of a rectangular room."
puts
puts "Please enter the length of room in meters:"
length_m = gets.chomp

puts "Please enter the width of the room in meters:"
width_m = gets.chomp

def calculate_area(length, width)
  area_m = (length.to_f * width.to_f)
end

metric = calculate_area(length_m, width_m)
sq_feet = metric * 10.7639

puts "The area of the room is #{metric.round(3)} sq. meters (#{sq_feet.round(3)} sq. feet)."
