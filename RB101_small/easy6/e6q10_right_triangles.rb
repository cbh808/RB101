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

def triangle(n)
  i = 1
  n.times do 
    puts ' '*(n - i) + '*' * i
    i += 1
  end
end

triangle(5)
triangle(9)