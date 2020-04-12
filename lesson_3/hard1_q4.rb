# returning a false condition
# handle invalid case <4 || >4 components to IP addres

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

# input: string
# output: boolean

# break into array of strings
# confirm has 4 elements else false
# for each element check if ip_number
# return value true or false

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4

  dot_separated_words.each do |element|
    return false unless is_an_ip_number?(element)
  end
  true
end

def is_an_ip_number?(number_as_string)
  number_as_string.to_i >= 0 && number_as_string.to_i <= 255
end

p dot_separated_ip_address?('123.33.44.55')
p dot_separated_ip_address?('123.33.44')
p dot_separated_ip_address?('123.33.44.55.66')
p dot_separated_ip_address?('123.33.44.555')
