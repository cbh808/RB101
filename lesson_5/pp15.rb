# return array which contains only hashes where all integers are even

# access values of one hash and move to array
# check if all items are even

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

b = arr.select do |hash|
  hash.all? do |-, value|
    value.all? do |num|
      num.even?
    end
  end
end

p b 