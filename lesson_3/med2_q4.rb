def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# expect: mutated my_string => "pumpkinsrutabaga" because String#<< mutates passed argument
# output:
puts "My array looks like this now: #{my_array}"
# expect: mutated my_array as in q3, still pointing to same object
# output: nope not correct, does not mutate but assigns an_array_param to a new object