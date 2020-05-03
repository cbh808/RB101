=begin
# Further:
rewrite leap_year to perform its tests in the opposite order of 
previous solution. Check 4 first, then 100, then 400 
 
Q: Is this solution simpler or more complex than original solution?
A: it is more concise and simple, complex in that 400 year
rule is not explicit
=end

def leap_year?(year)
  if year % 4 != 0
    return false
  end
  if year % 100 == 0
    return false unless year % 400 == 0
  end 
  true  
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