=begin
# inputs:
first name, a space, and a last name passed as a single String argument
# outputs:
returns a string that contains the last name, a comma, a space, and the first name
# rules:
assume exactly two args
# Example / Test Case:
see code

# Data Structures:
input string  
output manipulated string

# Algorithm:
split name into array
swap elements
join with comma
=end 
def swap_name(name)
  name_array = name.split
  name_array[0], name_array[1] = name_array[1], name_array[0]
  name_array.join(', ')
 end
 
 p swap_name('Joe Roberts') == 'Roberts, Joe'

 # alternative 1 line solution
def swap_name1(name)
  name.split(' ').reverse.join(', ')
end