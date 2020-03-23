a = %w(a b c d e)

# What do each of these puts statements output?
=begin
what does fetch do?
  Tries to return the element at position index, but throws 
  an IndexError exception if the referenced index lies outside 
  of the array bounds. 
  This error can be prevented by supplying a second argument, 
  which will act as a default value.

  Alternatively, if a block is given it will only be executed
  when an invalid index is referenced.
=end

puts a.fetch(7)
# index error - outside of array bounds
puts a.fetch(7, 'beats me')
# 'beats me'
puts a.fetch(7) { |index| index**2 }
# invalid index therefore block to be executed
# 49

# other:
#what is %w?
# its an array of strings 
# see https://docs.ruby-lang.org/en/master/syntax/literals_rdoc.html

puts a.fetch(nil)
# type error - no implicit conversion from nil to integer
puts a.fetch(0)
# a
puts a.fetch(0, 4)
# 0 index exists
# a
puts a.fetch(5, 4)
# index 5 outside array bounds, therefore default value
# 4
puts a.fetch(5, ' ')
# index 5 outside array bounds, therefore 'puts' a space as default
#
puts a.fetch()
# (ArgumentError) - wrong number of arguments (given 0, expected 1..2) 