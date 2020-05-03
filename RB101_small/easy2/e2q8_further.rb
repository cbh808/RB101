# validate input 'p' or 's' and issue error messages if different.
  # loop until corrrect input
# # read the documentation for #inject. 
# (Note that all Enumerable methods can be used on Array.) 
# Try to explain how it works to yourself.
# use #inject in your solution to this problem.

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

choice = ''
loop do
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp
  if choice == 'p' or choice == 's'
    break
  else
    puts ">>That's not a valid choice - please input 'p' or 's'"
  end
end

# sum = 0
sum = (1..integer).inject(:+) 

# product = 1
product = (1..integer).inject(:*)

if choice == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product}."
end