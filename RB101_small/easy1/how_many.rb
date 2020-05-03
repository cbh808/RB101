=begin
# Problem
  # inputs
    # array as argument to method
  # outputs 
    # integer of number of occurences of array elements

# Example / Test Case
  # car => 4
  # truck => 3
  # SUV => 1
  # motorcycle => 2

# Data Structure 
  # input: array
  # output: integer associated with each unique instance
  # key-value pairs stored in a hash

# Algorithm
  # define method that takes array argument
  # create empty hash
  # return array without repeat values using .uniq on original array
  # iterate over unique array elements and transform to hash keys and set 
  #  each element equal to the count of each element in original array
  # iterate hash and puts with interpolation to reveal all key-value pairs
=end
# Code
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
'motorcycle', 'car', 'truck', 'suv', 'Truck', 'Car',]

def count_occurences(array)
  vehicle_hash = Hash.new   #alt: vehicle_hash = {}

# make each element lowercase
  array.map! do |element|  #map! mutates array
    element.downcase
  end

# create array with unique values only 
# iterate over array to create keys and set values to count 
# of values of original array as values in hash
  array.uniq.each do |element|
    vehicle_hash[element] = array.count(element)
  end
  
# output using string interpolation
  vehicle_hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurences(vehicles)