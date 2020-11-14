=begin
Problem (explicit reqs / implicit reqs)
Write a method that can rotate the last n digits of a number.

inputs:
arg1 integer of number to be manifpulated
arg2 integer n, number of digits at end of arg1 to rotate

outputs:
integer arg1 rotated n digits

Rules:
rotating just 1 digit results in the original number being returned
use the rotate_array method from the previous exercise 
n is always a positive integer.

Example / Test Case:
see code


Data Structures:
see Problem statement


Algorithm:
define method with args (integer, n )
convert integer to a string
convert string to array of chars
rotate subarray of size n at end of array
  subarray defined by slice array[-n..-1]
  return value of rotate subarray is array[1..-1] + [array[0]]
concatenate array of non-rotated part of array and rotated subarray
join array together and convert to int

=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  array = integer.to_s.chars
  rotated_subarray = rotate_array(array[-n..-1])
  if n < array.size
    result = (array[0..array.size-1-n] + rotated_subarray).join.to_i
  else
    result = rotated_subarray.join.to_i
  end
  result
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# more concise approach: reassign rotated slice of array
def rotate_rightmost_digits1(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

puts
p rotate_rightmost_digits1(735291, 1) == 735291
p rotate_rightmost_digits1(735291, 5) == 752913
p rotate_rightmost_digits1(735291, 6) == 352917