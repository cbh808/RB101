=begin
String#upcase! is a destructive method,
why does this code print HEY you instead of HEY YOU? 
Modify the code so that it produces the expected output.

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  => the Array#each is called on the name.chars, i.e. the array ['y','o','u']
      therefore the c.upcase! is acting on array elements, 
      not the local variable `name` which is not affected

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
=end

def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

#alt
def shout_out_to(name)
  puts 'HEY ' + name.upcase
end