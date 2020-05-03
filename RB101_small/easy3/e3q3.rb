=begin
# Problem
  # inputs
    #  string obatined from user 
    #  user prompted to input word or multiple words
  # outputs 
    # integer indicating number of string characters, excluding any spaces
    # string output to user with result

# Example / Test Case
  Please write word or multiple words: walk
  There are 4 characters in "walk".

  Please write word or multiple words: walk don't run
  There are 13 characters in "walk, don't run"

# Data Structure 
  # input prompt and user input as string
  # array of characters
  # integer for number of characters
  # string for printing output 

# Algorithm
  # define empty string
  # prompt user to input string until string is provided
  # gets string
  # convert string into array of characters
  # count total characters and subtract spaces 
  # provide output with number of characters
=end
# Code
user_string = ''
while user_string == '' 
  puts "Please write a word or multiple words:"
  user_string = gets.chomp
end

character_array = user_string.chars
characters = character_array.count - character_array.count(' ')

puts "There are #{characters} characters in \"#{user_string}\"."
