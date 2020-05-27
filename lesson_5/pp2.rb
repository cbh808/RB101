# inputs: array, each element is hashes with 3 key/value pairs
# output: sort hashes based on book publication year, earliest to the latest
# data structures: array of hashes, hash
# algorithm
# iterate over elements 
# compare :published values using sort method

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

c = books.sort  do |a, b|
    a[:published] <=> b[:published]
  end

p c
puts

# alternative:
d = books.sort_by do |element|
  element[:published]
  end

p d
puts
p books