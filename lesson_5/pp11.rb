# use combination of methods, including either select or reject
# to return new array identical in structure to the original
# containing only the integers that are multiples of 3.
# map arr
# select elements where int % 3 == 0

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr| 
  sub_arr.select do |element|
    element % 3 == 0
  end 
end

# using reject
arr1 = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr1.map do |sub_arr1|
  sub_arr1.reject do |num|
    num % 3 != 0
  end
end
