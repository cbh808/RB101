# what is output?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# answer passed as argument to method mess_with_it
# mess_with_it => returns 50
# mess_with_it does not change address or object pointed to by answer

# output of p is 42 - 8 = 34