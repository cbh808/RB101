=begin
Is series valid?
valid series of numbers must contain exactly three odd numbers.
numbers in the series must sum to 47.

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
  # `odd_count` assigned int 3, therefore always truthy
  # should use `==` to do a comparison
end
=end

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false


# further 
# Since equality comparison odd_count == 3 returns a Booleans,
# is the ternary operator on line 5 necessary to return a Boolean?

# A: not needed because evaluates to correct boolean without the ternary.

def valid_series1?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3
end

puts
p valid_series1?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series1?([10, 6, 19, 2, 6, 4])             # should return false

# or:
def valid_series2?(nums)
  return false if nums.sum != 47
  nums.count { |n| n.odd? } == 3
end

puts
p valid_series2?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series2?([10, 6, 19, 2, 6, 4])             # should return false
