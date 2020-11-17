=begin
# inputs:
write method w one arg, an array of numbers or words
# outputs:
sorted array
# rules:
use bubble sort alg
sort in place, i.e. mutate Array

# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:
def method w/ one arg
  swap = 1
  until swap == 0 do
    swap = 0
    (0..array.size-2).each do |idx|
      # compare 1st el. @ idx 0 w/ 2nd el. @ idx1
      # if idx 0 <=> idx 1 == 1 (larger)
      if array[idx] <=> array[idx+1] == 1
        swap the values
        reassign swap = 1
      end
    end

end
=end

def bubble_sort!(array)
  swap = 1

  until swap == 0 #repeats below iteration until no swaps carried out
    swap = 0
    (0..(array.size - 2)).each do |idx| 
      if (array[idx] <=> array[idx+1]) == 1
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swap = 1
      end
    end
  end

end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
