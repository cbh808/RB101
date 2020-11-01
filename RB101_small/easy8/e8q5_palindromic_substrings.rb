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
select elements from all substrings that are > 1 in len and palindromes
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
  substrings(str).select {|sub| sub.size > 1 && sub == sub.reverse}
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