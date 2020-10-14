=begin
# Problem
Determine if given year greater than 0 (Gregorian Calendar) is leap year
# inputs
  integer (year > 0) as method argument
# outputs 
  boolean: return true if leap year
  boolean: return false if not leap year
# rules
  year is a leap year if evenly divisible by 4 (unless ev. divisible by 100)
  not leap year if ev. divisible by 100 (unless ev. divisible by 400)
  leap year if evenly divisible by 400

# Example / Test Case
leap_year2(2016) == true
leap_year2?(2015) == false
leap_year2?(2100) == false
leap_year2?(2400) == true
leap_year2?(240000) == true
leap_year2?(240001) == false
leap_year2?(2000) == true
leap_year2?(1900) == false
leap_year2?(1752) == true
leap_year2?(1700) == false
leap_year2?(1) == false
leap_year2?(100) == false
leap_year2?(400) == true

# Data Structure 
  integer input
  boolean return value

# Algorithm
  using conditionals check leap year rules above 
  respecting following order: 
    - check if year%400 == 0 first, if true then is leap year
    - then check if year%100 == 0, if true then is not leap year
    - then check year%4, if true then is leap year
  return appropriate boolean for if leap year or not
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

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
puts 

#shorter alternative
def leap_year2?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  year % 4 == 0
end

p leap_year2?(2016) == true
p leap_year2?(2015) == false
p leap_year2?(2100) == false
p leap_year2?(2400) == true
p leap_year2?(240000) == true
p leap_year2?(240001) == false
p leap_year2?(2000) == true
p leap_year2?(1900) == false
p leap_year2?(1752) == true
p leap_year2?(1700) == false
p leap_year2?(1) == false
p leap_year2?(100) == false
p leap_year2?(400) == true