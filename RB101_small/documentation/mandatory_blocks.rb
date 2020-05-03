# search Array to find first element whose value exceeds 8 using Array#bsearch

a = [1, 4, 8, 11, 15, 19]

b = a.bsearch {|x| x > 8}
puts b

#bsearch uses binary search which is quicker algorithm than #find and #select