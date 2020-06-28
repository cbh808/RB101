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
# Algorithm
string split into array of chars
iterate over chars change.lowcase to upcase and vice versa, leave other chars alone
join back into string
=end 
LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swapcase(string)
  char_array = string.chars
  char_array.map! do |char| 
    if LOWERCASE.include?(char) 
      char.upcase 
    elsif UPPERCASE.include?(char)
      char.downcase
    else
      char
    end
  end
  char_array.join
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'

# alt w regex, e.g. if char =~ /[a-z]/