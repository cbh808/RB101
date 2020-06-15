#truncate if > 80 chars

def print_in_box(featured_text)
length = featured_text.size
if featured_text.size > 76
  length = 76
end


  a = '+-' + '-'*length + '-+' 
  b = '| ' + ' '*length + ' |'
  c = '| ' + featured_text[0..(length-1)] + ' |'
  
  puts a
  puts b
  puts c
  puts b
  puts a
end

print_in_box('')
print_in_box('To boldly go where no one has gone before or and even some narly places where one has gone before .')
print_in_box('To be or to be something else')
