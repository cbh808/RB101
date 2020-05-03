=begin
# Written problem statement
# Problem
  # inputs
    array of numbers as argument to method
  # outputs 
    # output array of same length
    # elements contain running total of input array

# Example / Test Case
running_total([1, 1, 1]) == [1, 2, 3]
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Data Structure 
  # input array
  # outout array

# Algorithm
  # method takes input array as arg
  # create empty output array
  # add element 0 to output array if input_array not empty
  # create block that iterates through 2 elements of array
  # ..sums them together and adds value to output array
  # return output array
=end
# Code
def running_total(input_array)
  output_array = []
  if input_array == []
    output_array
  elsif input_array.size == 1
    output_array << input_array[0]
  else
    output_array << input_array[0]
    for i in 1...input_array.size
      output_array << output_array[i-1] + input_array[i]
    end
  end
  output_array
end 

# the above can be made more concise, but less readable:
# def running_total(input_array)
#   output_array = []
#   output_array << input_array[0] if input_array[0] != nil 
#   for i in 1...input_array.size
#     output_array << output_array[i-1] + input_array[i]
#   end
#   output_array
# end

running_total([1, 1, 1]) == [1, 2, 3]
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

#but then again, this shorter solution is satisfying:
# def running_total(input_array)
#   sum = 0
#   array.map { |value| sum += value }
# end