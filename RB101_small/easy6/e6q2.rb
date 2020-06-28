=begin
# Problem
# inputs  
array of strings
# outputs  
return array of same string values, except with a, e, i, o, u removed.
# rules
    

# Example / Test Case
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Data Structure 
  

# Algorithm
iterate over array elements and delete non vowels from each element(solve this one)
=end 
VOWELS = 'aeiouAEIOU'

def remove_vowels(array_of_strings)
  array_of_strings.map do |value|
    value.delete VOWELS 
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']