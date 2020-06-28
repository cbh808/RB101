=begin
# Problem
# inputs
method that takes a positive integer, n, as arg
# outputs
right triangle whose sides each have n stars
# rules
hypotenuse to have one end at the lower-left 
and the other end at the upper-right.
# Example / Test Case
triangle(5)

    *
   **
  ***
 ****
*****


# Data Structure 
integer arg
string output of spaces and stars
# Algorithm
i = 1
loop n times
string concatenation with n - i spaces,  i stars
=end 

puts "input 'TL' 'TR' 'BL' or 'BR'"
input = gets.chomp.downcase

def triangle(n, location)
  if location == 'br'
    i = 1
    n.times do 
      puts ' '*(n - i) + '*' * i
      i += 1
    end
  elsif location == 'bl'
    i = 1
    n.times do 
      puts '*' * i + ' '*(n - i)
      i += 1
    end
  elsif location == 'tr'
    i = 0
    n.times do 
      puts ' '* i + '*' * (n - i)
      i += 1
    end
  else
    i = 0
    n.times do 
      puts '*' * (n - i) + ' '* i
      i += 1
    end
  end
end

triangle(5, input)
triangle(9, input)