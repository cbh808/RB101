=begin
# Problem
write method
# inputs
Array of Integers between 0 and 19

# outputs
returns Array of those Integers sorted based on the English spelling of each number as string:
zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
# rules
-
# Example / Test Case
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
# Data Structure
input array of integers
hash to store string equivalent of each integer
output array of 'sorted' integers

# Algorithm
Set constant = hash of integer/string pairs
sort numerical array elements using hash to retrieve correct values of strings to compare
=end

NUMBER_HASH = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 
          7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 
          14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(array_of_integers)
  array_of_integers.sort {|a, b| NUMBER_HASH[a] <=> NUMBER_HASH[b]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# note that hash not required, can use array in lieu of hash
NUMBER_ARRAY = %w(zero one two three four five six seven eight nine
  ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

  def alphabetic_number_sort1(array_of_integers)
    array_of_integers.sort {|a, b| NUMBER_ARRAY[a] <=> NUMBER_ARRAY[b]}
  end

  puts
  p alphabetic_number_sort1((0..19).to_a) == [
    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0
  ]

# another test
NUMBER_ARRAY2 = [78, 34, 35]

  def alphabetic_number_sort10(array_of_integers)
    array_of_integers.sort {|a, b| NUMBER_ARRAY2[a] <=> NUMBER_ARRAY2[b]}
  end

  puts
  p alphabetic_number_sort10((0..2).to_a) == [1, 2, 0]