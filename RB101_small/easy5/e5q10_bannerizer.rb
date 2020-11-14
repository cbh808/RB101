=begin
# Problem
# inputs  
string of 0 or more chars
# outputs  
print it to screen within a box
# rules
assume input will fit in terminal window,
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
input: string
output: strings (of symbols forming box and text within)

Algorithm:
define method with 1 arg (str)
initialize local var 'top_bottom'
  outputs box type plus + hyphen + string length spaces + hyphen + plus
    number of chars more of '-' 
initialize local var 'inner'
  outputs bar + space + string length more spaces + space + bar
initialize local var 'middle' 
  outputs bar + space + string + space + bar
puts above local variables in correct order.
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
