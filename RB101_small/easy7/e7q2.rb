# input string
# output returns a hash that contains 3 entries: 
# -number of characters in the string that are lowercase letters
# -number of characters that are uppercase letters
# -the number of characters that are neither
# Data Stucture: string, hash with integer values

def letter_case_count(string)
  a = string.count "a-z"
  b = string.count "A-Z"
  c = string.size - a - b
  {lowercase: a,  uppercase: b, neither: c}
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }