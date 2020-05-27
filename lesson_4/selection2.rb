# create version of double_numbers that mutates the caller
def double_numbers(numbers)
  
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter] # alt: numbers[counter] *= 2
    numbers << current_number * 2     
    numbers.shift
    
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers)