def fun_with_ids
  a_outer = 42

  a_outer_id = a_outer.object_id

  puts "a_outer is    #{a_outer}"
  puts "with an id of #{a_outer_id} before the block"
  puts

  1.times do 
    a_outer_inner_id = a_outer.object_id

    puts "a_outer id was  #{a_outer_id} before the block"
    puts "and is          #{a_outer_inner_id} inside the block"
    puts

    a_outer = 22

    puts "a_outer inside after reassignment is  #{a_outer}"
    puts "with an id of                         #{a_outer_id} before"
    puts "and                                   #{a_outer.object_id} after"
    puts

    a_inner = a_outer

    a_inner_id = a_inner.object_id

    puts "a_inner is    #{a_inner}"
    puts "with an id of #{a_inner_id} inside the block"
    puts "compared to   #{a_outer.object_id} for outer"
    # TEST: puts a_inner_id.object_id => gives 91 which is id of variable pointing to object with value of another ID
    puts
  end

puts "a_outer is     #{a_outer}"
puts "with an id of  #{a_outer_id} BEFORE the block"
puts "and            #{a_outer.object_id} AFTER the block"
puts

puts "a_inner is    #{a_inner}"                       rescue puts "ugh ohhhhh"
puts "with an id of #{a_inner_id} INSIDE"             rescue puts "ugh ohhhhh"
puts "and           #{a_inner.object_id} AFTER block" rescue puts "ugh ohhhhh"

end

fun_with_ids