# previous problem but no center stars (hollow diamond)

# solution II
def diamond_2(n)
  star_numbers = []
  # fill array with number of stars per line up to n stars
  i = 1
  until i > n
    star_numbers << i
    i += 2
  end

  # fill array with number of stars on bottom half down to 1 star
  # 'star_numbers[0..-2]' adds a new nested array element to existing array
  star_numbers << star_numbers[0..-2].reverse 
  star_numbers.flatten!  

  # output to terminal
  star_numbers.each do |x| 
    if x == 1 
      puts '*'.center(n)
    else
      puts ('*' + (' '*(x-2)) + '*').center(n)
    end
  end
end

puts
diamond_2(1)
puts
diamond_2(3)
puts
diamond_2(9)
