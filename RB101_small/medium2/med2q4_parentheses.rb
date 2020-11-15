=begin
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
  true if count !=0
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

=begin
Problem:
return true if all parentheses in the string are properly balanced, false otherwise
rules: parentheses must occur in matching '(' and ')' pairs.
failure condition: if number of ')' ever is larger than no. of '(', return false
2nd failure condition: if final number of counter != 0

test cases:
see below

input: string
output: boolean

Alg. ref.
INIT LOC VAR COUNTER = 0
DEFINE METHOD
ITERATE OVER EACH CHAR OF THE STRING
  IF CHAR == ')', COUNTER -= 1
  IF CHAR == '(', COUNTER += 1
  IF COUNTER <0, RETURN FALSE
RETURN TRUE IF COUNTER == O, ELSE FALSE
=end

def balanced1?(str)
  counter = 0
  str.each_char do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'
    return false if counter < 0
  end
  counter == 0 ? true : false
end

puts
p balanced1?('What (is) this?') == true
p balanced1?('What is) this?') == false
p balanced1?('What (is this?') == false
p balanced1?('((What) (is this))?') == true
p balanced1?('((What)) (is this))?') == false
p balanced1?('Hey!') == true
p balanced1?(')Hey!(') == false
p balanced1?('What ((is))) up(') == false
