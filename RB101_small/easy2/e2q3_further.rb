puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = (gets.chomp.to_f)/100

tip = format("%.2f",(bill * tip_percentage))
total_bill = format("%.2f", (bill + tip.to_f))
# using Kernel#format instead of round ensures 
# that 2 decimal places are shown in outputs


puts "The tip is $#{tip}"
puts "The total is $#{total_bill}"