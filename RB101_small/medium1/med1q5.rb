=begin
# inputs:
odd integer n
# outputs:
display 4-pointed diamond in an n x n grid
# rules:
assume argument will always be an odd integer.
# Example / Test Case:
diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

# Data Structures:
input integer
output strings output to terminal

# Algorithm:
I.
iterate by two from 1 up to n
on each iteration, add iteration number of stars centered at string of length n
iterate down-from n-2 by two down-to one
on each iteration add iteration number stars centered at string of length n
II.
create array with sequence of stars required
iterate over array outputing the array values as stars centered at string of length n
=end


# solution I
def diamond(n)
  i = 1
  while i <= n
    puts ('*' * i).center(n)
    i += 2
  end

  i = n - 2
  while i >= 1
    puts ('*' * i).center(n)
    i -= 2
  end
end

diamond(1)
puts
diamond(3)
puts
diamond(9)

# solution II
def diamond_2(n)
  star_numbers = []
  # fill array to n
  i = 1
  until i > n
    star_numbers << i
    i += 2
  end
  p star_numbers
  # fill array with number of stars on bottom half down to 1 star
  # 'star_numbers[0..-2]' adds a new nested array element to existing array
  star_numbers << star_numbers[0..-2].reverse
  star_numbers.flatten!
  p star_numbers
  # output to terminal
  star_numbers.each {|x| puts ('*' * x).center(n)}
end

puts
diamond_2(1)
puts
diamond_2(3)
puts
diamond_2(9)

=begin
Algorithm ref:
define method with args (n)
loop over all rows 1..n
  if current row is in range of tops rows
    stars number is 2n-1
    puts (n-stars)/2 spaces + '*' * stars
  else if row == middle row
    puts n stars
  else
    stars is in bottom
    puts (n stars - 2 per row away from middle)
=end

def diamond1(n)
  top_rows = (1..n/2)
  middle_row = n/2 + 1
  max_stars = n
  (1..n).each do |current_row|
    if top_rows.include?(current_row)
      stars = 2*current_row-1
      puts ('*' * stars).center(n)
    elsif
      current_row == middle_row
      puts '*' * max_stars
    else
      stars = max_stars - (2*(current_row - middle_row))
      puts ('*' * stars).center(n)
    end
  end
end

diamond1(9)
