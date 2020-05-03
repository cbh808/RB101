# method that can take either an string or an array argument,
# and determines whether that argument is a palindrome. 
# Does not use an if, unless, or case statement or modifier.
# Code
def palindrome?(string_or_array)
  string_or_array == string_or_array.reverse
end

palindrome?([1, 3, 5 ,3, 1]) == true
palindrome?([1, 4, 5 ,3, 1]) == false          
palindrome?("texaroninoraxet") == true 
palindrome?("dirt") == false
