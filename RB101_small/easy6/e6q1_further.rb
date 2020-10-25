# solve for angles > 360 || < 0 degrees

DEGREE = "\xC2\xB0"

def dms(float)
  total_seconds = float*3600.round
  degrees = ((total_seconds/3600)%360).to_i
  remainder = (total_seconds % 3600).to_i
  minutes= "%02d" % (remainder/60)
  seconds   = "%02d" % (remainder%60)
  %(#{degrees}#{DEGREE}#{minutes}'#{seconds}")
end 

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) #== %(40°00'00")
puts dms(-40) #== %(320°00'00")
puts dms(-420) #== %(300°00'00")
