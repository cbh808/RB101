=begin
# Problem
  # inputs
    # positive integer as argument to method
  # outputs 
    # list (array) of digits of the positive integer

# Example / Test Case
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# Data Structure 
  # input positive integer
  # output array

# Algorithm
  # define method w/ one positive integer argument
  # convert to string and split individual digits into array
=end
def digit_list(integer)
  list = integer.to_s.split(//) # converts int to string, then splits into character array
  list.map! {|char| char.to_i} # converts back to int, mutates arra
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(0) == [0]                     # => true

puts digit_list(007) == [0, 0, 7]             # => false
p digit_list(007)                             # => [7]

# Alternative 1
def digit_list1(number)
  digits = []
  loop do
    number, modulus = number.divmod(10) # divmod returns result of integer divison and modulo
    digits.unshift(modulus)             # prepends remainder into digits
    break if number == 0
  end
  digits
end
# 'Integer#divmod' which divides number by 10,returns two values:
# the result of performing an integer division, and 
# the modulus. E.g. 12345.divmod(10) returns [1234, 5]
# '.unshift' Prepends objects to the front of self, moving other elements upwards.

# Alternative 2, idiomatic Ruby:
def digit_list2(number)
  number.to_s.chars.map(&:to_i)
end
# 'chars' Returns an array of characters in str. Shorthand for 'str.each_char.to_a'
# '(&:to_i)' is equivalent to '<something>.map { |char| char.to_i }'