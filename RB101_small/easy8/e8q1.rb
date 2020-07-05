=begin
# inputs:
Array of numbers 
# outputs:
returns sum of the sums of each leading subsequence for that Array
# rules:
assume that Array always contains at least one number.

# Example / Test Case:
see code

# Data Structures:
input array of ints
output integer 

# Algorithm:
define empty sums_array
i = 0
loop over original array array.size times
sum values from 0 to i and append to empty array
sum sums_array value 
=end 

def sum_of_sums(array)
  sums_array = []
  i = 0
  while i < array.size
    sums_array << (0..i).inject(0){|sum, n| sum + array[n] }
    i += 1
  end
  sums_array.inject(:+)  #alternative: sums_array.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35


# solution without intermediate array
def sum_of_sums1(array)
  sum_total = 0
  i = 0
  while i < array.size
    sum_total += (0..i).inject(0){|sum, n| sum + array[n] }
    i += 1
  end
  sum_total  
end

p sum_of_sums1([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums1([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums1([4]) == 4
p sum_of_sums1([1, 2, 3, 4, 5]) == 35