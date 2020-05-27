# return a hash where the key is the first item in each sub array and 
# the value is the second item. dont use Array#to_h

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}
arr.each do |array|
  hash[array[0]] = array[1]
end
hash