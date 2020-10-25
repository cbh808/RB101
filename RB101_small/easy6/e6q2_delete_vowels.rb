=begin
# Problem
# inputs
array of strings
# outputs
return array of same values with a, e, i, o, u removed
# rules
both uppercase and lowercase vowels to be removed
# Example / Test Case
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Data Structure
input: array (with string values)
output: array (with string values)

# Algorithm

define method w/ one arg (array)
iterate over words of each array element
delete vowels from each word
return new array
=end

def remove_vowels1(array)
  array.each {|word| word.delete!('aeiouAEIOU')}
end

p remove_vowels1(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels1(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels1(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


VOWELS = 'aeiouAEIOU'

def remove_vowels(array_of_strings)
  array_of_strings.map do |value|
    value.delete VOWELS 
  end
end

puts
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']