=begin
write method w one arg
return number of friday the 13ths in year given by arg
# inputs:
year as arg to method
# outputs:
int as number of friday the 13ths in given year
# rules:
year will be > 1752
how do we know this? which methods to use
Calendar? 
# Example / Test Case:
see code

# Data Structures:
input int
output int

# Algorithm:
write method that takes one arg, an int
check if there are days that are Friday and 13th in given year
- initialize local var. counter = 0
- iterate over months in the given year
- increment counter if 13th of given month is on a friday
- return counter value
=end 

def friday_13th(year)
  counter = 0
  (1..12).each do |month|
    counter += 1 if Time.local(year, month, 13).friday?
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2