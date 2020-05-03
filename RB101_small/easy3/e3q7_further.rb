=begin
Write method that returns the 2nd, 4th, 6th,
and so on elements of an array.
=end

def odd_indexes(array)
  array2 = []
  i=1
  while i < array.length
    array2 << array[i]
    i += 2
  end
  array2
end

odd_indexes([2, 3, 4, 5, 6]) == [3, 5]

=begin
Solve exercise in at least 2 additional ways.
def odd_indexes(array)
=end
# alt1: use if method to check index number
def odd_indexes1(array)
  array2 = []
  i=0
  loop do
    array2 << array[i] if i.odd?
    i += 1
    break if i == array.length
  end
  array2
end

p odd_indexes1([2, 3, 4, 5, 6]) == [3, 5]
p odd_indexes1([1, 2, 3, 4, 5, 6]) == [2, 4, 6]

# alt2: use each_index
def odd_indexes2(array)
  array2 = []
  array.each_index {|i| array2 << array[i] if i.odd? }
  array2
end

p odd_indexes2([2, 3, 4, 5, 6]) == [3, 5]
p odd_indexes2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]