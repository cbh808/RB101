=begin
write method w one arg, string

# inputs:
string of arbitrary characters
# outputs:
hash with percentages of lowercase, uppercase, and other (neither) chars
# rules:
string will always contain >= 1 char

# Example / Test Case:
see code

# Data Structures:
input string
output hash

# Algorithm:
define method with one arg
initialize local variable `lower` and assign number of lowercase chars
initialize local variable `upper` and assign number of uppercase chars
initialize local variable `neither` and assign number of non-alpha chars
initialize hash and set all inital values to 0
initialize local variable total_chars and assing value string size
determine % for lower / total_chars
repeat for upper and neither
return hash
=end

def letter_percentages(string)
  percentages = {lowercase: 0, uppercase: 0, neither: 0}

  lower = string.count('a-z').to_f
  upper = string.count('A-Z').to_f
  neither = string.size - lower - upper
  total_chars = string.size

  percentages[:lowercase] = (lower/total_chars * 100).round(2)
  percentages[:uppercase] = (upper/total_chars * 100).round(2)
  percentages[:neither] = (neither/total_chars * 100).round(2)

  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

p letter_percentages('AbCd + f') == { lowercase: 37.5, uppercase: 25, neither: 37.5 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}