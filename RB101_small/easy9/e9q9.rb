=begin
# inputs:
3 ints
# outputs:
string representing letter grade
# rules:

# Example / Test Case:
see code

# Data Structures:
input integer args
output one character string

# Algorithm:
divide sum of grades by number of grades
compare against case 
and give result
=end 

def get_grade(grade1, grade2, grade3)
  final_grade = (grade1 + grade2 + grade3) / 3
  
  case final_grade
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  when 0..59
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"