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

# Algorithm ref:
divide sum of grades by number of grades
compare against case for ranges of scores for each letter grade
and give result
=end 

def get_grade(score1, score2, score3)
  final_grade = (score1 + score2 + score3) / 3
  
  case final_grade
  when >= 90  then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  when < 60   then 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"


