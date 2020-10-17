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
    declare scalene

# Algorithm Pseudo:
define method with 3 integer arguments `side1`, `side2`, `side3`
  initialize local variable `triangle1` and assign array the values of 3 args
    triangle1 = [side1, side2, side3]
    sort inputs from shortest to longest
  #check validity
    if sum of first 2 sides < 3rd side || any side lengths <= 0
      return :invalide
  # check types (alt1: use conditionals / alt2: use case statement)
    if triangle1 unique values size == 3 
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

  if triangle.first(2).sum < triangle.last || triangle.any? {|x| x <= 0}
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
