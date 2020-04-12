# Find 'important' in string & replace with 'urgent'
# - turn into array
# - return index of important
# - delete important
# - insert urgent

advice = "Few things in life are as important as house training your pet dinosaur."

string_array = advice.split
index = string_array.index('important')
string_array.delete('important')
string_array.insert(index, 'urgent')
advice = string_array.join(' ')

puts advice

# alternatively:  advice.gsub!('important', 'urgent')