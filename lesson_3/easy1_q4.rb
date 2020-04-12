numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # deletes the value at [1] (mutates = modifies in place)
p numbers            # [1, 3, 4, 5] 

numbers = [1, 2, 3, 4, 5]

numbers.delete(1) # deletes the value 1 in numbers (mutates)
p numbers         # [2, 3, 4, 5]
