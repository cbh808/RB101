=begin
triangles types defined in problem:
  equilateral:  all sides equal length
  isosoles:     2 sides equal length, 3rd side different
  scalene:      all sides different length
  invalid:      does not meet validity rules

# inputs:
3 arguments, lengths of triangles
# outputs:
triangle1 type as defined above

# rules:
to be valid, sum of lengths of two shortest sides > than longest side
to be valid, all sides have length > 0

# Example / Test Case:
see code

# Data Structures:
input: 3 integers as args to method
output: symbol representing triangle1 type

# Algorithm General:
define method with 3 arguments
sort inputs from shortest to longest
check validity
  sum of first 2 sides > 3rd side
  all side lengths > 0
if valid:
  check if equilateral
    all sides same
  check if isosceles
    2 sides same
  else
    return scalene

# Algorithm Pseudo:
define method with 3 integer arguments `side1`, `side2`, `side3`
  initialize local variable `triangle1` and assign array the values of 3 args
    triangle1 = [side1, side2, side3]
    sort inputs from shortest to longest
  #check validity
    if sum of first 2 sides < 3rd side || any side lengths <= 0
      return :invalide
  # check types (alt1: use conditionals / alt2: use case statement)
    if triangle1 unique values size == 1
      :equilateral
    else if unique values size == 2
      :isosceles
    else if unique values size == 3
      :scalene
    end

=end 

#C: 
def triangle(side1, side2, side3)
  triangle = [side1, side2, side3].sort

  if triangle.first(2).sum <= triangle.last || triangle.any? {|x| x <= 0}
    return :invalid
  end

  case triangle.uniq.size
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

=begin
Rules:
equilateral All 3 sides are of equal length
  isosceles 2 sides are of equal length, while the 3rd is different
  scalene All 3 sides are of different length
  to be valid triangle: 
    sum of the lengths of 2 shortest sides > length of longest side
    all sides must have lengths greater than 0

Algorithm:
DEFINE METHOD W/ 3 ARGS, LENGTHS OF TRIANGLES (a, b, c)
CHECK IF INVALID
  APPEND LENGTHS TO ARRAY
  CHECK THAT ALL SIDES > 0
  CHECK THAT TWO LOWER VALUE ELEMENTS < MAX VALUE
IF VALID, FIND OUT WHICH TYPE OF TRIANGLE
  IF VALUES AT ALL IDXs ARE SAME => :equilateral
  IF ANY TWO VALUES ARE SAME => :isosceles
  ELSE => :scalene
=end

def triangle1(a, b, c)
  sides = [a, b, c]
  return :invalid if sides.min <= 0 || sides.min(2).sum <= sides.max
  return :equilateral if a == b && b == c
  return :isosceles if a == b || b == c || c == a
  return :scalene
end

puts
p triangle1(3, 3, 3) == :equilateral
p triangle1(3, 3, 1.5) == :isosceles
p triangle1(3, 4, 5) == :scalene
p triangle1(0, 3, 3) == :invalid
p triangle1(3, 1, 1) == :invalid
