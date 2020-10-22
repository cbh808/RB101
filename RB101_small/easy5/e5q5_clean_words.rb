=begin
# Problem
# inputs  
string of words 
# outputs  
return string with all of the non-alphabetic characters replaced by spaces
# rules
all chars are lower case letters & non-alphabetic chars
max one space between words in the return value, i.e.
  no consecutive spaces
# Example / Test Case
cleanup("---what's my +*& line?") == ' what s my line '

# Data Structure 
string input
string out

# Algorithm refactor
iterate over string chars
  if not alphabetic, replace with blank
remove excess spaces from string
=end

def cleanup(string)
  string.gsub(/[^a-z]/i,' ').squeeze(' ')
end

=begin
# Algorithm without regex
# define cleanup method w one arg (string)
# replace non-alphabetic characters with spaces
  convert string to array of chars
  if chars are lowercase letters leave alone
  else convert to space
# iterate over chars, select char unless (char == ' ' and char[i+1] == ' ')
# join selected array 
=end

def cleanup7(funky_string)
  char_arr = convert_funky_string(funky_string)
  populate_final_array(final_array = [], char_arr)
  final_array.join
end

def convert_funky_string(funky_string)
  funky_string.chars.map do |char|
    if char.ord >= 97 && char.ord <= 122
      char
    else
      ' '
    end
  end
end

def populate_final_array (final_array, char_arr)
  char_arr.each_with_index do |char, i|
    if char != " "
      final_array << char
    elsif (char == " " && char_arr[i+1] != " ")
      final_array << char
    end
  end
  final_array
end


p cleanup("---what's my +*& line?")
p cleanup("-- -what'-s  my +*& line?k//")
puts
p cleanup7("---what's my +*& line?")
p cleanup7("-- -what'-s  my +*& line?k//")