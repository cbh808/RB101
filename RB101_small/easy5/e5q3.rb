=begin
# Problem
Write a method that takes a time using 24 hour format (hh:mm) format 
and returns time in a minute-based format . 
present the time of day based on the number of minutes 
before or after midnight. 
# inputs  
string argument, representing time in 24 hour format (hh:mm)
# outputs  
integer representation of time in minute format before midnight
integer representation of time in minute format after midnight
# rules
Method should work with any integer input.
If number of minutes positive, time is after midnight 
If number of minutes negative, time is before midnight
Don't use ruby's Date and Time classes
# Examples / Test Cases
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

# Data Structure 
string in hours and minutes converted to integers to represent minutes
integers to give determine return value (minutes before/after before_midnight)


# Algorithm
slice hours and minutes from string 
multiply by relevant factor to get minutes
add or subtract to get result
handle case 00:00 for before midnight
=end 

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def total_minutes(time)
  minutes_hh = time[0..1].to_i * MINUTES_PER_HOUR
  minutes_mm = time[3..4].to_i 
  minutes_hh + minutes_mm
end 

def after_midnight(time)
  minutes = total_minutes(time)
  
  if minutes == MINUTES_PER_DAY
    0
  else
    minutes
  end
end

def before_midnight(time)
  minutes = total_minutes(time)
  
  if minutes == 0
    0
  else
    MINUTES_PER_DAY - minutes
  end
end

