# what does step do?
#   Invokes the given block with the sequence of numbers 
#   starting at num, incremented by step (defaulted to 1) 
#   on each call.

5.step(to: 10, by: 3) {|value| puts value}
# 5
# 8

5.step(to: 11, by: 3) {|value| puts value}
# 5
# 8
# 11