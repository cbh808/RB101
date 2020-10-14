=begin
# Problem
  # use a float for one of the numbers instead of integer
  # divide by count of elements converted to float (returns a float)
=end
# Code
def average(number_array)
  sum = 0
  number_array.each {|element| sum += element }
  sum / number_array.count.to_f
end

puts average([1, 5, 87, 45, 8, 8])

puts average([9, 47, 23, 95, 16, 52])
