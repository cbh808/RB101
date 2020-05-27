# adapt double_numbers method to multiply by passed argument integer
def multiply(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= multiplier    # mutates caller

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)
p my_numbers
puts

# without mutation
def multiply2(numbers, multiplier)
  counter = 0
  multi_array = []

  loop do
    break if counter == numbers.size

    new_number = numbers[counter] * multiplier    
    multi_array << new_number 

    counter += 1
  end

  multi_array
end

my_numbers1 = [1, 4, 3, 7, 2, 6]
p multiply2(my_numbers1, 3)
p my_numbers1