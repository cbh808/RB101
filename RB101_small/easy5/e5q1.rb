=begin
# Problem
write method that returns ASCII string value of string
# inputs  
string
# outputs  
return integer ASCII string value
# rules
string value is sum of ASCII values of all characteers in a string   

# Example / Test Case
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Data Structure 
strings inputs (passed to method)
integer 

# Algorithm
define method that takes one argument
break string into array of chars
iterate over array and map ascii value of each char
sum elements of array and return  

=end 

def ascii_value(str)
  ascii_arr = str.chars.map do |char|
    char.ord
  end

  if ascii_arr != []
    ascii_arr.inject(:+) 
  else
    0
  end

end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# alternative:
def ascii_value1(str)
  sum = 0
  str.each_char do |char|
    sum += char.ord
  end
  sum
end

ascii_value1('Four score') == 984
ascii_value1('') == 0
