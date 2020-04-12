def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# 1st version modifies caller 'buffer'
# 2nd version uses local 'buffer', doesn't modify 'input_array'

# test
super_array = [2, 4, 6, 8]
p rolling_buffer1(super_array, 4, 10)
p super_array

duper_array = [2, 4, 6, 8]
p rolling_buffer2(duper_array, 4, 10)
p duper_array