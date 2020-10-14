# def reverse_words(string)

#   arr = string.split.map do |word|
#     if word.size >= 5
#       word.reverse
#     else
#       word
#     end
#   end

# arr.join(' ')

# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS



def stringy(integer)
  new_string = ''
  counter = 0
  loop do
    if counter % 2 == 0
      new_string[counter] = '1'
    else
      new_string[counter] = '0'
    end
    counter += 1
    break if counter == integer
    # p new_string.object_id
    new_string
  end
  new_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# other ways to solve:
# 2) change other toggle back and forth to 1 or 0 based on iteration 

def stringy2(integer)
  string = ""
  counter = 0
  while counter < integer
    toggle = 0
      if counter.even?
        toggle += 1
      end
    string[counter] = toggle.to_s
    counter += 1
  end
return string
end

puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'