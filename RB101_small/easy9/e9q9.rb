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
  when 90..  then 'A'  # when uses range, e.g. using '>90' throws error
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end
end

p get_grade(95, 190, 93) == "A"
p get_grade(50, 50, 95) == "D"

# def get_grade(int1, int2, int3)
#   avg_scores = (int1 + int2 + int3)/3

#   case avg_scores
#   when >= 90..100 then 'A'
  
#     end
# end
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"
# get_grade(1, 2, 3) == 'F'