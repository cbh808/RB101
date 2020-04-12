def tricky_method(a_string_parameter, an_array_param)
  a_string_parameter += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# expect: pumpkins => passed string argument not mutated, new object created
# result: correct; detaled explanation String#+= creates new string object
puts "My array looks like this now: #{my_array}"
# expect: ["pumpkins", "rutabaga"] => method << mutates array object, i.e. array argument
# result: correct