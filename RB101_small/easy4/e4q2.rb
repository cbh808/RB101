=begin
# Problem
  # inputs
    # integer representing a year as method argument
  # outputs 
    # return century as string with proper suffix, e.g 'st', 'nd'...
  # rules
    # New centuries begin in years that end with 01, e.g. 1901-2000 = 20th century
    # string ends in 0: ..0th, in 1: 1st, in 2: 2nd, in 3: 3rd
    # string end in 4..9, 4th...9th
    # string ends in 11..13: 11th, 12th, 13th
    

# Example / Test Case
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# Data Structure 
  # integer
  # string

# Algorithm
  # take integer as arg 'year' to century method
  # calculate century number
    century = year/100 for end of century, e.g. 100, 200, 1900, 2000
    century otherwise is year/100 + 1, 1950/100 = 19; 19 + 1 = 20 
  # create suffix method to calculate century suffix
    # handle numbers that are exception, i,e, end in 11, 12 or 13
    # handle rest of numbers that end in 0 to 9
  # return century number + result from suffix method
  # suffix method return century suffix based on century number
    
=end
# Code
def century(year)
  if year % 100 == 0
    century_number = "#{year/100}"
    century_number + suffix(century_number.to_s)
  else
    century_number = "#{year / 100 + 1}"
    century_number + suffix(century_number.to_s)
  end
end

def suffix(century_string)
  if century_string[-2..-1] == '11' ||
      century_string[-2..-1] == '12' || 
      century_string[-2..-1] == '13'
    'th'
  elsif century_string[-1] == '1'
    'st'
  elsif century_string[-1] == '2'
    'nd'
  elsif century_string[-1] == '3'
    'rd'
  else
    'th'
  end
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
