=begin
# inputs:
string
# outputs:
array of all possible palindromes of two letters or more
# rules:
substring can start anywhere within the string
use the substrings method of the previous exercise.
ignore case and ignore non-alphanumeric chars
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
    next if substring.size == 1
    palindrome_array << substring if substring.downcase == substring.downcase.reverse
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
  array_final.flatten.uniq
end

def substrings_at_start(string)
  array = []
  i = 0
  while i < string.size
    mini_string = string[0..i]
    b = mini_string.delete('^a-z^0-9')
    array << b if b.size > 1
    i += 1
  end
  array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == ["ll", "madam", "madamdidmadam", "ada", "adamdidmada", "damdidmad", "amdidma", "mdidm", "did", "oo"]
p palindromes('knitting cassettes') == ["nittin", "itti", "tt", "ss", "settes", "ette"]
p palindromes('-a--da%') == ['ada']
p palindromes('-a--dad%a#') == ['ada', 'adada', 'dad']
