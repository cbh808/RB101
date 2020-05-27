# order array of number strings by descending numeric value
arr = ['10', '11', '9', '7', '8']

c = arr.sort_by do |num|
    num.to_i
  end

p c.reverse               # =>["11", "10", "9", "8", "7"]

# alternative

d = arr.sort do |a, b|
    b.to_i <=> a.to_i
  end

p d
