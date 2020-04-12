def factors(number)
  divisor = number
  factors = []
  return nil if number <= 0
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# if don't wish to return for 0 or negative numbers:
#   while divisor > 0 do
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end

# test
p factors(9) # [1, 3, 9]
p factors(1) # [1]
p factors(0) 

# Bonus 1 
# What is the purpose of the number % divisor == 0 ?
  # This is test that defines if divisor divides into number
  # w/out a remainder. In Ruby % is called modulo.

# Bonus2
# What is the purpose of the second-to-last line (line 8)
#in the method (the factors before the method's end)?
  # last line evaluated by method, therefore is return value