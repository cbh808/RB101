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

# Algorithm ref ignoring case and non-alphabetic chars
str arg to be cleaned, e.g. non-alpha removed, and downcased
init loc var new_str and assign empty str
iteate over each char and pass to new_str if meets conditions
e.g. str.each_char {|ch| new_str += ch.downcase if char non-alpha}
=end 

def substrings(str)
  all_substrings = []
  0.upto(str.size - 1) do |idx|
    all_substrings += leading_substrings(str[idx..-1])
  end
  all_substrings
end

def leading_substrings(str)
  substrings = []
  (0..str.size-1).each do |idx|
    substrings << str[0..idx]
  end
  substrings
end

def palindromes(str)
  clean_str = ''
  str.each_char {|char| clean_str += char.downcase if char =~ /[a-z]/i}
  substrings(clean_str).select {|sub| sub.size > 1 && sub == sub.reverse}
end

p palindromes('abcd') == []
p palindromes('Madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == ["ll", "madam", "madamdidmadam", "ada", "adamdidmada", "damdidmad", "amdidma", "mdidm", "did", "madam", "ada", "oo"]
p palindromes('knitting cassettes') == ["nittin", "itti", "tt", "ss", "settes", "ette", "tt"]
p palindromes('-a--da%') == ['ada']
p palindromes('-a--dad%a#') == ['ada', 'adada', 'dad', 'ada']
