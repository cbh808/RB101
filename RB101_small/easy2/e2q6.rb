=begin
# Problem
  # inputs
    #  none
  # outputs 
    # puts odd numbers from 1 to 99 on separate lines

# Example / Test Case
1 
3
... # skipped a few numbers here
99

# Data Structure 
  # integers converted to strings 

# Algorithm
  # start counter
  # puts every odd number
  # increase count
=end
# Code

counter = 0
while counter < 100
  puts counter if counter.odd?
  counter += 1
end

# alternative with less iterations:
# start counter @ 1, don't check if odd & increase counter +=2 