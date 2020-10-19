=begin
# Written problem statement
continuation: The British Empire adopts the Gregorian Calendar 

# Problem
#inputs
  year as integer as year as method argument   
# outputs 
  determine if leap year in British Empire
# rules
  for year >= 1752, leap year solution as previous solution (Gregorian)
  for year < 1752, leap year if year/4 is evenly divisible (Julian)
  
# Example / Test Case
p leap_year?(1900) == false
p leap_year?(100) == true

# Data Structure 
  # integers

# Algorithm
  add conditional to return Julian leap year if < 1752
    return (year % 4) == 0 if year < 1752 
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

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
puts
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
puts
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true