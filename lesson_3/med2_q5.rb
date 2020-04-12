# refactor to make clearer

# One possibility is to give method parameters names
# that describe the results obtained in method
# def tricky_method(new_string, array_to_update)
#   new_string += "rutabaga"
#   array_to_update << "rutabaga"
# end

# Assuming you don't want the tricky results,
# it would also be possible to create two methods
# with distinct outcomes, each only doing one thing,
# and to set original variables to method return values.

def update_string(new_string)
  new_string += "rutabaga"
end

def update_array(array_to_update)
  array_to_update << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string = update_string(my_string)
my_array = update_array(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

