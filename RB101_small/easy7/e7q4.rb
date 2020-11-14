=begin
# inputs: string as an argument
# outputs 
returns new string w every uppercase letter replaced by lowercase version, 
every lowercase letter by uppercase version. 
All other characters should be unchanged 
# rules
don't use String#swapcase
# Example / Test Case
see code
# Data Structure 
string input
array to manipulate elements
string output

# Alg
LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def method with one arg (str)
init local var and assign empty str
iterate over string chars
if char LOWERCASE, make UPPERCASE, append to local var
if char UPPERCASE, make LOWERCASE, append to local var
else append char local var as is

def swapcase(str)
  LOWERCASE = ('a'..'z').to_a
  UPPERCASE = ('A'..'Z').to_a
  new_string = ' '
  str.each_char do |char|
    if LOWERCASE.include?(char)
      new_string << char.upcase
    elsif UPPERCASE.include?(char)
      new_string << char.downcase
    else
      new_string << char
    end
  end
  new_string
end
=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swapcase(str)
  new_string = ''
  str.each_char do |char|
    if LOWERCASE.include?(char)
      new_string << char.upcase
    elsif UPPERCASE.include?(char)
      new_string << char.downcase
    else
      new_string << char
    end
  end
  new_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# alt w regex, e.g. if char =~ /[a-z]/