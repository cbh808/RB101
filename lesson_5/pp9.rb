# return new array with sub arrays ordered (alphabetically or 
# numerically as appropriate) in descending order.
# input: array with sub-arrays as chars, integers or strings
# output: new array, each element ordered descending
# algorithm:
# iterate through array #and determine if int or string. 
# order with sort

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

b = arr.map do |element|
    element.sort do |a, b|
      b <=> a
    end
  end

p b

