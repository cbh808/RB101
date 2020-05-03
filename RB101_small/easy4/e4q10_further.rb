=begin
# Problem
Refactor below to reduce the 3 integer_to_string calls to just one.
=end
# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

# Code
CONVERT_HASH = { 0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
                  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"}

def integer_to_string(number)
  number *= -1 if number < 0
  number_array = number.digits.reverse!
  char_array = number_array.map {|value| CONVERT_HASH[value]}
  char_array.join
end

def signed_integer_to_string(number) # this works but is not better
  if number == 0
    prefix = ''
  elsif number < 0
    prefix = "-"
  else 
    prefix = "+"
  end
  prefix + "#{integer_to_string(number)}"
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(0) == '0'
p signed_integer_to_string(-123) == '-123'

