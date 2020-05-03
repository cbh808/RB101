=begin
# Problem
# inputs
  integer (year > 0) as method argument
# outputs 
  return true if leap year
  return false if not leap year
# rules
  leap year if evenly divisible by 4, unless ev. divisible by 100
  not leap year if ev. divisible by 100, unless ev. divisible by 400
  leap year if evenly divisible by 400

# Example / Test Case
leap_year(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

# Data Structure 
  integer

# Algorithm
  using conditionals check leap year rules above 
  respecting order, check year/400, then year/100, then year/4
  return boolean if leap year or not
=end

# Code
def leap_year?(year)
  if year % 400 == 0
    true 
  elsif year % 100 == 0
    false
  elsif year % 4 == 0   # alt:  else
    true                #         year % 4 == 0
  else                  #       end
    false               #     end
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
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true