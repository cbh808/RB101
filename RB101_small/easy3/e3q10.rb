=begin
# Problem
# inputs  
  integer as argument to method
# outputs  
  return true if integer argument reads the same forwards and backwards,
  i.e. is palindromic
  return false if not

# Example / Test Case
see belwo

# Data Structure 
  integer input
  string for comparison

# Algorithm
  define method to take integer arg
  convert integer to string
  reverse string and compare if equal
=end

# Code
def palindromic_number?(number)
  string = number.to_s
  p string
  string == string.reverse
end

palindromic_number?(34543) == true 
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
palindromic_number?(0345430) == false  # reads as octal number due to leading 0 

# could also have used palindrome? method as previously defined:
=begin

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

=end

# Q: Suppose your number begins with one or more 0s.
# A: Numbers starting with '0' are considered to be octal
# Q: Will your method still work? Why or why not? 
# A: it will not work for desired test base 10, but will test the converted number
# Q: Is there any way to address this?
# A: probably