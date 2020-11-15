=begin
triangles types defined:

  right:        One angle of the triangle is a right angle (90 degrees)
  acute:        All 3 angles of the triangle are less than 90 degrees
  obtuse:       One angle is greater than 90 degrees.

  invalid:      does not meet validity rules

# inputs:
3 arguments, angles of triangle
# outputs:
symbol, triangle type as defined above 

# rules:
to be valid, sum of angles == 180 degrees
to be valid, all angles > 0

# Example / Test Case:
see code

# Data Structures:
input: 3 integers as args to method
output: symbol representing triangle type

# Algorithm:
define method with 3 arguments
check validity
  sum of angles == 180
  all angles > 0
if valid:
  check if right
    one side == 90
  check if acute
    all sides < 90
  else
    return :obtuse
=end 

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if angles.sum != 180 || angles.any? {|x| x <= 0}
    return :invalid
  end

  if angles.any? {|x| x == 90}
    :right
  elsif angles.all? {|x| x < 90}
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid