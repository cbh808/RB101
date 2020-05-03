=begin
# Problem
  # use a float for answer instead of integer
  # divide by count of elements (return a float)
=end
# Code
def average(number_array)
  sum = 0
  number_array.each {|element| sum += element }
  sum / number_array.count.to_f
end

puts average([1, 5, 87, 45, 8, 8])

puts average([9, 47, 23, 95, 16, 52])
