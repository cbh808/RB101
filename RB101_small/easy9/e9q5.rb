=begin
# inputs:
string argument
# outputs:
p return true if all of the alphabetic characters inside the string are uppercase, false otherwise. 
# rules:
Characters that are not alphabetic should be ignored.

# Example / Test Case:
see code

# Data Structures:
input string  
output boolean

# Algorithm:
check if string.upcase == string
=end 

def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


# longer solution
LETTERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def uppercase1?(str)
  str.each_char do |char|
    if LETTERS.include?(char.upcase)
      return false if !LETTERS.include?(char)
    end
  end
  true
end

puts
p uppercase1?('t') == false
p uppercase1?('T') == true
p uppercase1?('Four Score') == false
p uppercase1?('FOUR SCORE') == true
p uppercase1?('4SCORE!') == true
p uppercase1?('') == true

# longer solution using regex:
def uppercase2?(str)
  str.each_char do |char|
    if char =~ /[a-z]/i
      return false if char =~ /[^A-Z]/
    end
  end
  true
end

puts
p uppercase2?('t') == false
p uppercase2?('T') == true
p uppercase2?('Four Score') == false
p uppercase2?('FOUR SCORE') == true
p uppercase2?('4SCORE!') == true
p uppercase2?('') == true