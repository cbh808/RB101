# create version of double_numbers that mutates the caller
def double_numbers(numbers)
  
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2

    counter += 1
  end

  numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers.object_id
p double_numbers(my_numbers)
p my_numbers
p my_numbers.object_id