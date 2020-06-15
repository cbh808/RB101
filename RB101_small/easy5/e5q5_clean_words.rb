=begin
# Problem
# inputs  
string of words (all lowercased) and non-alphabetic characters
# outputs  
return string with all of the non-alphabetic characters replaced by spaces
# rules
If one or more non-alphabetic characters occur in a row
only have one space in the result
The result should never have consecutive spaces
# Example / Test Case
cleanup("---what's my +*& line?") == ' what s my line '

# Data Structure 
string input
manipulate in character arrays
'clean' string out
# Algorithm
I
split string into array of characters
replace non-alphabetic characters with spaces
iterate over chars, select char unless (char == ' ' and char[i+1] == ' ')
join selected array
=end 

def cleanup(funky_string)
  char_arr = convert_funky_string(funky_string)
  populate_final_array(final_array = [], char_arr)
  final_array.join
end

def convert_funky_string(funky_string)
  funky_string.chars.map! do |char|
    if char.ord >= 97 && char.ord <= 122
      char
    else
      ' '
    end
  end
end

def populate_final_array (final_array, char_arr)
  char_arr.each_with_index do |char, i|
    if i == (char_arr.size - 1)
      final_array << char
    elsif char != " "
      final_array << char
    elsif (char == " " && 
            char_arr[i+1] != " ")
      final_array << char
    end
  end
  final_array
end


cleanup("---what's my +*& line?")
cleanup("-- -what'-s  my +*& line?k//")
