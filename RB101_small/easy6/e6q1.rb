=begin
# Problem
# inputs  
floating point number that represents an angle between 0 and 360 degrees
# outputs  
returns String that represents that angle in degrees, minutes and seconds
# rules
use degree symbol (°) to represent degrees 
use single quote (') to represent minutes
use double quote (") to represent seconds
A degree has 60 minutes, a minute has 60 seconds.
use 2 digit numbers w leading zeros when formatting minutes and seconds, e.g., 321°03'07".
use constant to represent the degree symbol: DEGREE = "\xC2\xB0"

# Example / Test Case
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Data Structure 
float input  
conversion of float to 3 integers
conversion of integers into string to be returned

# Algorithm
use float.to_i to obtain degrees integer
(float%1 * 60) / 1 gives minutes
((float%1 * 60) % 1) * 60, rounded, gives seconds
utilize results using string interpolation to return angle in correct form 
=end 

DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.to_i
  minutes = ("%02d" % (float%1 * 60).round)
  seconds = ("%02d" % (((float%1 * 60) % 1) * 60).round)
  seconds = '00' if seconds == '60'

  # "%(#{degrees}#{DEGREE}#{minutes}'#{seconds}\")"
  %(#{degrees}#{DEGREE}#{minutes}'#{seconds}")
end 

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

# above hard to read, and has an avoidable edge case:
# better solution is to convert float into total seconds
# then divmod on total seconds to get degrees/remaining seconds
# use divmod on remaining seconds to get minutes/seconds