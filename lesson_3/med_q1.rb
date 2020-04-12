i = 0
string = "The Flintstones Rock!"

10. times do
  puts " " * i + string
  i += 1
end

# alternative: 
# 10.times { |i| puts (" " * i) + "The Flintstones Rock!" }