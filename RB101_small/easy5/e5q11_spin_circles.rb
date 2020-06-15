def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# the split method converts the string object into an array.
# the array is mutated in place, but the original string is nowhere involved in that action
# the mutated array is joined together into a string object
# therefore the string object returned is a different object from original string object