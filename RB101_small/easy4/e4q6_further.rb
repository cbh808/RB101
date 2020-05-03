=begin
# Further
Try solving this problem using Enumerable#each_with_object
or Enumerable#inject 
=end

# Code with Enumerable#inject based on longer solution:
def running_total(input_array)
  output_array = []
  if input_array == []
    output_array
  elsif input_array.size == 1
    output_array << input_array[0]
  else
    output_array << input_array[0]
    for i in 1...input_array.size
      output_array << input_array[i]
      output_array[i] = input_array[0..i].inject(:+)
    end
  end
  output_array
end 

p running_total([1, 1, 1]) == [1, 2, 3]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

#but then again, this shorter solution is more satisfying:
def running_total1(input_array)
  input_array.map.with_index { |x, i| (input_array[0..i]).inject(:+) }
end
p running_total1([1, 1, 1]) == [1, 2, 3]
p running_total1([2, 5, 13]) == [2, 7, 20]
p running_total1([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total1([3]) == [3]
p running_total1([]) == []

# and this one too with Enumerable#each_with_object
def running_total2(input_array)
  sum = 0
  input_array.each_with_object([]) { |x, a| a << sum += x }
end

p running_total2([1, 1, 1]) == [1, 2, 3]
p running_total2([2, 5, 13]) == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total2([3]) == [3]
p running_total2([]) == []