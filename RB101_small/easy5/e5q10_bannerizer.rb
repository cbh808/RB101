=begin
# Problem
# inputs  
short line of text
# outputs  
print it within a box
# rules
assume input will fit in terminal window.  
# Example / Test Case
print_in_box('')
+--+
|  |
|  |
|  |
+--+
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
# Data Structure 
string input of text
strings of symbols forming box 
# Algorithm
define method taking string as input
define variable for each line of box for the case of empty string
update middle of each variable based on string length
output variables to terminal
=end 

def print_in_box(featured_text)
  a = '+-' + '-'*featured_text.size + '-+' 
  b = '| ' + ' '*featured_text.size + ' |'
  c = '| ' + featured_text + ' |'
  
  puts a
  puts b
  puts c
  puts b
  puts a
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box('To be or to be something else')
