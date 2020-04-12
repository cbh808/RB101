# mutate string to leave words from 'house' onwards
# create new string
# use slice! method
# return "Few things in life are as important as "
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!("Few things in life are as important as ") # p to inspect
# works but alternative without writing out string:
  # advice.slice!(0, advice.index('house'))

# inspect advice 
p advice # has been mutated

# what would happen if used 'slice' instead of 'slice!'?
  # it would have same return value but not mutate the caller
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice(0, advice.index("house")) # p to inspect

# inspect advice  
p advice # has not been mutated