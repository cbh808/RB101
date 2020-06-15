#truncate if > 80 chars

def print_in_box(featured_text)
length = featured_text.size
lines = 1
if featured_text.size > 76
  length = 76
  lines = featured_text.size/76 + 1
end

  a = '+-' + '-'*length + '-+' 
  b = '| ' + ' '*length + ' |'

  puts a
  puts b
  if lines == 1
    puts '| ' + featured_text + ' |'
  else
    multiline_output(featured_text, lines)
  end 
  puts b
  puts a
end

def multiline_output(featured_text, lines)
i = 1
start_index = 0
  while i < lines
    end_index = start_index + 75
    puts '| ' + featured_text[start_index..end_index] + ' |'
    start_index = end_index + 1
    i += 1
  end
  start_index = ((lines - 1)*76)
  if i == lines
    end_index = featured_text.size - 1
    puts '| ' + featured_text[start_index..end_index] + ' '*(77 - (featured_text.size%76)) +'|'
  end
end


print_in_box('')
print_in_box('To boldly go where no one has gone before and even some narly places where one has gone before.')
print_in_box('To boldly go where no one has gone before and even some narly places where one has gone before but wants to go back again to see if a better outcome is feasible.')
print_in_box('To be or to be something else')
