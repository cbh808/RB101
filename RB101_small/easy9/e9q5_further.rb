=begin
Q: we show that uppercase? should return true if the argument is an empty string. 
Would it make sense to return false instead? Why or why not?

A: no because it is true that all alphabetic characters of string are uppercase,
it just happens that this string doesn't have any.
=end 

def uppercase?(string)
  string.upcase == string
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true