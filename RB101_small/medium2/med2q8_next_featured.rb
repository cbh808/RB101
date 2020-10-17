=begin
'featured number' definition: odd number, multiple of 7, no repeating digits
method takes one arg, integer
Issue error message if no next featured number exists, e.g. > 10 digit number
  - largest possible would be largest consisting of all 10 digits, working from 9876543210 down
# inputs:
integer
# outputs:
next featured number greater than input
# rules:

# Example / Test Case:
49 is a featured number
98 is not (it is not odd)
97 is not (it is not a multiple of 7)
133 is not (the digit 3 appears twice)

# Data Structures:
input integer
output integer

# Algorithm:
define a method with one arg, an int
  number = int + 1

  while number <= 9876543210
    break if int if featured?(number)
    number += 1
  end
  
  if number >= 9876543210
    puts 
  else
    number
  end
end

def featured?(number)
  determine if odd using odd? or num % 2 == 1
  determine if multiple of 7 if num % 7 == 0
  determine if digits appears > 2 times
    convert int it into a string
    convert string to array of chars
    remove repeating chars
    join and convert into string then into int
    compare with original int to see if same
end
=end 
#C:
def featured(int)
  number = int+1

  while number < 9876543210
    break if featured?(number)
    number += 1
  end

  if number >= 9876543210
    puts "-> There is no possible number that fulfills those requirements"
  else
    number
  end
end

def featured?(number)
  return false if number % 2 != 1
  return false if number % 7 != 0
  return false if number.to_s.chars.uniq.join.to_i != number
  true
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements