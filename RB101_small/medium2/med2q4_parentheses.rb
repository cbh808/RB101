=begin
# inputs:

# outputs:

# rules:
if first parenthesis is `)`, == false
all balanced pairs must each start with a `(``, but not `)`
therefore as iterating over string:
  the number of `(` - number of ')' must be >= 0 at all times

# Example / Test Case:
see code

# Data Structures:
input string
output boolean

# Algorithm:
define method with 1 arg, a string
  initialize local variable count = 0
  iterate over characters of the string
    if char is '(' => count += 1
    if char is  ')' => count -= 1
    return false if count < 0
  end iterations
  true
=end

def balanced?(string)
  count = 0
  string.each_char do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    return false if count < 0
  end
  return false if count != 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false