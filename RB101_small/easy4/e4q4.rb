=begin
# Written problem statement
continuation: The British Empire adopted the Gregorian 
Calendar 

# Problem
#inputs
  year as integer as year as method argument   
# outputs 
  determine if leap year in British Empire
# rules
  for year >= 1752, leap year solution as previous solution (Gregorian)
  for year < 1752, leap year if year/4 is evenly divisible (Julian)
  
# Example / Test Case
leap_year?(1900) == false
leap_year?(100) == true

# Data Structure 
  # integers

# Algorithm
  add conditional at start of Gregorian leap year solution 
  to check if year < 1752
=end

# Code
def leap_year?(year)
  if year < 1752
    year % 4 == 0
  elsif year % 400 == 0
    true 
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end 

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true