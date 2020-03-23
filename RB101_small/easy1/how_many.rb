# Written problem statement:
# Write a method that counts the number of occurrences
#  of each element in a given array.

# Problem
  # inputs
    # array assigned to variable
    
  # outputs 
    # integer of number of array elements

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
  # name method that takes array argument
  # create empty hash
  # return array with w/o repeat values using .uniq on original array
  # iterate ove unique array elements and transform to hash keys and set 
  #  each element equal to the count of each element in original array
  # iterate hash and puts with interpolation to reveal all key-value pairs

# Code
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'Truck', 'Car',
]

def count_occurences(array)
  vehicle_hash = Hash.new
# vehicle_hash = {}

# make each element lowercase
  array.map! do |element|
    element.downcase
  end

# create unique array and iterate over it to create keys
# set count of each element of original array as values in hash
  array.uniq.each do |element|
    vehicle_hash[element] = array.count(element)
  end
  
# print in requested format using interpolation
  vehicle_hash.each do |key, value|
    puts "#{key} => #{value}"
  end

end

count_occurences(vehicles)