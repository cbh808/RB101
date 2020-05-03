def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

puts 'my_method(4, 5, 6)'
my_method(4, 5, 6)

# what happens when non-optional argument is not called?
  # Under 'Calling Methods'/Arguments/Default Positional Arguments:
    # "When the method defines default arguments you do not need to supply all the arguments to the method. 
    # Ruby will fill in the missing arguments in-order."
  #  prints:
  # [4, 5, 3, 6]   

# Other examples:
puts 'my_method(0,0)'
my_method(0, 0)
# [0, 2, 3, 0]

puts 'my_method(0, 0, 0, 0)'
my_method(0, 0, 0, 0)
# [0, 0, 0, 0]

puts 'my_method(nil, 0, 0, 0)'
my_method(nil, 0, 0, 0)
# [nil, 0, 0, 0]

puts 'my_method(0)'
my_method(0)
# Error: wrong number of arguments (given 1, expected 2..4) (ArgumentError)

=begin
why is p having brackets? 
  because method prints an array with given args
  if use my_method(4, 5, 6) with 'p a, b, c, d' would output:
    4
    5
    3
    6
=end