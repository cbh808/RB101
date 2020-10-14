require 'pry'

arr = [1, 2, 3, 4, 5]
p arr
puts "initial object_id: #{arr.object_id}"
counter = 0

loop do
  arr[counter] += 1
  p arr
  puts "object_id after iteration #{counter}: #{arr.object_id}"
  counter += 1
  binding pry
  break if counter == arr.size
end

p arr
puts "final object_id: #{arr.object_id}"