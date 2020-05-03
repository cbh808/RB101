array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
=begin
# what will code print?
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

array 2 is provided values with the #<< method, 
  which pushes objects to end of array2
array 2 values are the SAME objects as those of array1, not copies
array 2 is therefore pointing to the same objects mutated 
  by array1.each { |value| value.upcase!... }

How can this feature of ruby get you in trouble?
You can make unintended changes to data that should not be changed

How can you avoid it?
experience with mutation and the methods that mutate arrays
make a copy of the values of array 1, not pointers to same objects
testing
irb
documentation
=end
