require 'date'

puts Date.new
# => -4712-01-01

puts Date.new(2016)
# => 2016-01-01

puts Date.new(2016, 5)
# => 2016-05-01

puts Date.new(2016, 5, 13)
# => 2016-05-13

# documentation changed from Ruby 2.5.0 to 2.6.0. 
# 'Date::new' is combined with 'Date::civil:'
# civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
# new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date 