greetings = { a: 'hi'}
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => hi there 
puts greetings # => expect: {:a => "hi there"} because
# informal_greeting with '<<' is mutating the object it
# points to,which also happens to be greetings[:a]

# alternatives
# create new object with greetings[:a].clone
# use string concat. to add ' there'=> returns new object