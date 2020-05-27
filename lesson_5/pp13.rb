# return new array w same sub-arrays as original ordered 
# logically by taking into consideration only odd numbers

# algorithm:
# sort over array comparing arr[2]
# works for this example but assumes data is always [1, even number, odd number]
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort do |a, b|
  a[2] <=> b[2]
end

# algorithm alternative for general case:
# use sort_by on subarray
# use select to return arrays of odd numbers to be used as sort_by 'keys'
  
arr1 = [[1, 6, 7], [1, 4, 9], [1, 8, 3], [0, 1, 1]]

arr1.sort_by do |sub_array|
  sub_array.select do |num|
    num.odd?
  end
end