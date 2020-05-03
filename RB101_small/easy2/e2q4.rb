=begin
# Problem
# inputs
  # age of user now
  # age from user at retirement
# outputs 
  # current year
  # year of retirement
  # years from now until retirement
  # string output

# Example / Test Case
  # What's your age? 30
  # At what age would you like to retire?
  # 70
  # It's 2016. You will retire in 2056.
  # You have only 40 years of work to go!

# Data Structure 
  # string input age converted to integer
  # string input age at retirement converted to integer
  # integer operations
  # string output 

# Algorithm
  # prompt and gets age, convert to integer, assign to variable
  # prompt and gets age at retirment, assign to variable
  # determine year now
  # calculate work years left
  # calculate retirment year
  # output results with string interpolation
=end
# Code
require 'date'

puts "What is your age?"
age_now = gets.chomp.to_i
puts "At what age would you like to retire?"
age_retirement = gets.chomp.to_i

year = Date.today.year
work_years_left = age_retirement - age_now
year_retirement = year + work_years_left

puts "It's #{year}. You will retire in #{year_retirement}."
puts "You have only #{work_years_left} years of work to go!"