# puts "the value of 40 + 2 is" + (40 + 2) => causes error
# Why => puts converts objects to strings: 40 + 2 not calculated
# use string interpolation:
puts "the value of 40 + 2 is #{40 + 2}"
# use string concatenation w/ variable converted to string:
calculation = 50 + 10
puts "the value of 50 + 10 is " + calculation.to_s
# note could also use ...       + (50 + 10).to_s