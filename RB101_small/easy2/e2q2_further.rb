# Ask for the input measurements in feet, and display the results 
# in square feet, square inches, and square centimeters.

# Code 
FT2_TO_CM2 = 1/10.7639 * 10000
FT2_TO_IN2 = 144

puts "This program calculates area of a rectangular room [converts ft2 to in2 & cm2]."
puts

puts "Please enter the length of room in feet:"
length_ft = gets.chomp.to_f

puts "Please enter the width of the room in feet:"
width_ft = gets.chomp.to_f

square_ft = (length_ft * width_ft).round(2)
square_in = (square_ft * FT2_TO_IN2).round(0)
square_cm = (square_ft * FT2_TO_CM2).round(0)

puts "The area of the room is:  #{square_ft} ft2, " + 
                                "(#{square_in} in2, " + 
                                "#{square_cm} cm2)"        
