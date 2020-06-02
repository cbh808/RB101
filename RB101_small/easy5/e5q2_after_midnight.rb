=begin
# Problem
Write a method that takes a time using a minute-based format 
and returns time in 24 hour format (hh:mm). 
present the time of day based on the number of minutes 
before or after midnight. 
# inputs  
integer argument, negative, 0 or positive representing minutes
# outputs  
string representation of time in 24 hour format (hh:mm)
# rules
Method should work with any integer input.
If number of minutes positive, time is after midnight 
If number of minutes negative, time is before midnight
Don't use ruby's Date and Time classes
# Examples / Test Cases
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# Data Structure 
integers to give input and calculate hours and minutes 
hours and minutes converted to strings to represent time convention

# Algorithm
use argument and take modulo 1440 to get minutes remaining within 24 hours day
take minutes and do integer divsion by 60 to get hh 
take minutes and take modulo 60 to get mm
  use formating for numbers 0-9 to ensure double digits
convert hours and minutes to string using string concatenation
=end 

def time_of_day(time)
  clock_minutes = time % 1440 # 1440 = 24h * 60 min/h 
  hours       = clock_minutes / 60
  minutes     = clock_minutes % 60
  
"%02d" % hours + ":" + "%02d" % minutes
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# alt: # use divmod, takes care of negavitve cases directly
# also note use of Kernel#format
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end