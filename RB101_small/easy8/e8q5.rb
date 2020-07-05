=begin
# inputs:
string
# outputs:
array of all possible palindromes of two letters or more
# rules:
substring can start anywhere within the string
use the substrings method of the previous exercise.
case matters
# Example / Test Case:
see code

# Data Structures:
input string
output array of string elements

# Algorithm:
use substrings method from previous exercise to return all possible substrings
iterate over string elements
append element to new array if string is equal to reverse of string
return new array
=end 

def palindromes(initial_string)
  palindrome_array = []
  all_substrings = substrings(initial_string)
  all_substrings.each do |substring|
    next if substring.size < 2
    palindrome_array << substring if substring == substring.reverse
    end
  palindrome_array
end

def substrings(string)
  array_final = []
  i = 0
  while i < string.size
    array_final << substrings_at_start(string[i..-1])
    i += 1
  end
  array_final.flatten
end

def substrings_at_start(string)
  array = []
  i = 0
  while i < string.size
    array << string[0..i]
    i += 1
  end
  array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
