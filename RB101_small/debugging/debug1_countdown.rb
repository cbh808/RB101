=begin
Change the code so that our program successfully counts down from 10 to 1.

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter) ==> this is returning value one less than counter,i.e. 9
                        but not reassigning counter to counter -= 1
end

puts 'LAUNCH!'
=end

def decrease(counter)
  counter -  1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

# refactor the code to specify the `10` only once.
puts

def decrease1(counter)
  counter -  1
end

counter = 10

until counter < 1
  puts counter
  counter = decrease1(counter)
end

puts 'LAUNCH 2!'

#alt:
10.downto(1) {|x| puts x}
puts 'LAUNCH 3!'