
puts "Code examples with Enumerable#inject"
array = [1, 3, 5]
p array.inject(:+)      # => 9
p array.inject(1, :+)   # => 10
p array.inject(:*)      # => 15
p array.inject(2, :*)   # => 30
p array.inject(1) { |memory, number| memory * number } # => 15
puts

array = [2, 3, 5]
p array.inject { |memory, number| memory * number }    # => 30
p array.inject(1) { |memory, number| memory * number } # => 30
p array.inject(2) { |memory, number| memory * number } # => 60
puts

array = [10, 4, 3]
p array.inject{ |memory, value| memory - value }  # => 3 
puts

def longest(array)
  array.inject do |memory, word|
    memory.length > word.length ? memory : word  # => fluffyunicorn
  end
end

beasts =  %w(barkydog badbear stripyzebra reddragon fluffyunicorn)

p longest(beasts)     # => "fluffyunicorn"
puts

puts "Code examples with Enumerable#each_with_object"
(1..10).each_with_object([]) do |element, obj|
  obj << element * 2
end
# => [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

p [1, 2, 3].each_with_object([]) { |element, obj| obj << element*2 }
# => [2, 4, 6]

p [1, 2, 3].each_with_object([5]) { |element, obj| obj << element*2 }
# => [5, 2, 4, 6]

p [1, 2, 3].each_with_object(2) { |element, obj| obj << element*2 }
# => [5, 2, 4, 6]

array1 = [1, 2, 3]
array2 = [4, 5, 6]
p array2.each_with_object(array1) { |element, obj| obj << element }
# => [1, 2, 3, 4, 5, 6]


