def mess_with_vars(god, buddha, dude)
  god.gsub!("one","two")
  buddha.gsub!("two","three")
  dude.gsub!("three","one")  
# the method variable name has nothing
# to do with the mutating of the outer scope variable - 
# the mutating only caused by the method #gsub!
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => "...two"
puts "two is: #{two}"     # => "...three"
puts "three is: #{three}" # => "...one"

