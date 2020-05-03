=begin
write a method named xor that takes two arguments, 
and returns true if exactly one of its arguments 
is truthy, false otherwise.

# Problem
# inputs
  define method 'xor' taking 2 arguments
# outputs 
  return true if exactly one argument is truthy
  return false if not

# Example / Test Case
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false 

# Data Structure 
  # integers 
# Algorithm
  # define method with two arguments, use '?' in method name 
  because return value is boolean
  # provide logic to determine if only 1 is truthy
=end
# Code
def xor?(arg1, arg2)
  if arg1 && (arg2 == false)  #alt: return true if arg1 && !arg2
    true
  elsif (arg1 == false) && arg2
    true
  else
    false
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# further
# xor examples:
# light switch at top & bottom of stairs
# ...

# Note: || and && are so-called short circuit operators in that
# the second operand is not evaluated if its value is not needed. 
# Q: Does xor method perform short-circuit evaluation of its operands?
# A: no 
# Q: Why or why not? 
# A: because it must check second operand to evaluate result
# Q: Does short-circuit evaluation in xor operations even make sense?
# A: no, by definition above, short-circuit not an option