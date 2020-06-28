# use Array.zip to find one line solution
def multiply_list(array1, array2)
  # array1.zip(array2) => [[3, 9], [5, 10], [7, 11]]
  array1.zip(array2).map {|arr| arr[0] * arr[1]}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]