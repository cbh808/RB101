=begin
# Problem
  # inputs
    # string of number characters as arg to method
    # assume no bad inputs, i.e. non-numeric chars
  # outputs 
    # returns integer corresponding to string input
  # rules
    # no use of standard Ruby conversion methods, e.g, String#to_i, Integer()

# Example / Test Case
string_to_integer('4321') == 4321
string_to_integer('570') == 570
string_to_integer('0') == 0

# Data Structure 
  # strings converted to numbers

# Algorithm
  # define method with one string argument
  # create hash of integers
    using string character as key and corresponding number as integer
  # create array of individual number characters
  # map array to create integer array 
  # do the math to convert each digit to correct exponent and sum parts
=end
# Code
def string_to_integer(num_chars)
  hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
          "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}
  
  num_chars_array = num_chars.chars
  integer_array = num_chars_array.map { |char| hash[char] }
  # p integer_array => [4, 3, 2, 1]
  
  integer = 0
  for i in 1..(integer_array.length)
    integer += (integer_array[i-1]*(10**(integer_array.length-i)))
  end
  integer
end

=begin
Algorithm refactor:
- initialize constant HASH and assign char keys to integers 0..9
- define method with one arg (a string)
- initialize local variable `sum` and assign value of `0`
- initialize local variable `digits`and assign new array as empty array
- Iterate over the values of the string
    - put the current value of string coverted to an integer at the front of the new array
- iterate over array idx from 0 to (array size - 1)
    - add (value * 10**idx) to the sum
- Return sum
=end

HASH = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
        "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def string_to_integer(string)
	sum = 0
	digits = []
		string.each_char do |char|
			digits.unshift(HASH[char])
		end
		(0...digits.size).each do |idx|
			sum += digits[idx]*10**idx
		end
	sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('0') == 0