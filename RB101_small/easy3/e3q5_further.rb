=begin
generalize 'squares' method to a
"power to the n" type method: cubed, to the 4th power,
to the 5th, etc. using the multiply method?
=end
# Code
def multiply(num1, num2)
  num1 * num2
end

def power_to_n(number, power)
  multiply(number, number**(power-1))
end

power_to_n(3, 3) == 27
power_to_n(5, 2) == 25
power_to_n(-8, 4) == 4096
