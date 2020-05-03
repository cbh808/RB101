# alternative 1:
1.upto(99) {|int| puts int if int.odd?}

# alternative 2 (with array):
array = Array.new(100) {|int| int}
puts array.select {|int| int.odd?}

# alternative 3:
odd_integer_max = 99
iterations = (odd_integer_max)/2 + 1   # integer division
the_odd_number = 1
  
iterations.times do
  puts the_odd_number
  the_odd_number += 2
end
