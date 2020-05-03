=begin
# Problem
  # inputs
    #  2 strings to be used in method as args
    #  strings assumed different sizes - no validation required
  # outputs 
    # determine lengths of both strings
    # return concatenation of strings in sequence  short-long-short 

# Example / Test Case
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# Data Structure 
  # strings

# Algorithm
  # define method with 2 strings args
  # find length of each argument and assign to separate variables
  # concatenate strings to achieve correct order short-long-short 
=end

# Code
def short_long_short(string1, string2)
 length_string1 = string1.length   #alt, use .length directly w/o vars.
 length_string2 = string2.length
 
  if length_string1 < length_string2 #if string1.length > string2.length
    "#{string1}#{string2}#{string1}" #alt: string1 + string2 + string1 
  else
    "#{string2}#{string1}#{string2}"
  end
end

short_long_short('abc', 'defgh') == 'abcdefghabc'
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"