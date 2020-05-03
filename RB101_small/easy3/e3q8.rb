=begin
# Problem
  # inputs
    #  string passed as argument to method
  # outputs 
    # return true if string palindrome
    # else return false
  # rules
   #  case, spaces and punctuation matter

# Example / Test Case
  palindrome?('madam') == true
  palindrome?('Madam') == false          
  palindrome?("madam i'm adam") == false 
  palindrome?('356653') == true

# Data Structure 
  # string

# Algorithm
  # check number of chars/2 to see number of comparisons to make
  # integer division ensures that if odd number of chars, won't compare middle char
  # make loop to compare 1st char with last, 2nd with 2nd to last, etc
  # if a paar is found not same, return false
  # if no paar found false, return true
=end
# Code
def palindrome?(string)

  pairs = (string.length)/2
  for i in 1..pairs
    if string[i-1] != string[-i]
      return false
    end
  end
  return true
end

  palindrome?('madam') == true
  palindrome?('Madam') == false          
  palindrome?("madam i'm adam") == false 
  palindrome?('356653') == true
  