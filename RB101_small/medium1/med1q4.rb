=begin
given: bank of switches, numbered from 1 to n
Each switch is connected to exactly one light that is initially off
# inputs:
one argument, the total number of switches
# outputs:
return an Array that identifies which lights are on after n repetitions.
# rules:
initial state: all lights off
pass1: all switches toggled => all lights on
pass2: switches 2, 4, 6...toggled
pass3: switches 3, 6, 9...toggled
...repeating n passes

# Example / Test Case:
example with n = 5 lights:
    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. 
The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# Data Structures:
input integer (number of switches)
output array (lights that are on)

# Algorithm:

define method with n as argument
initialize arr = empty array 
# append array to make list of switch numbers that were toggled (array elements)
loop over 1.upto(n) do |round|
 i = 1 
 while round * i <= n
  array << round number * i
  i += 1
 end 

initialize new lights_on array = []

iterate over 1..n do |switch|
count total number of occurences of each switch in arr
if count odd? then light is on at that switch and append to lights_on
return lights_on
=end 

def switches_on?(n)
  arr = []
  1.upto(n) do |round|
    i = 1
    while round * i <= n
      arr << round * i 
      i += 1
    end
  end
 
  lights_on = []
  1.upto(n) do |switch|
    if arr.count(switch).odd?
      lights_on << switch
    end
  end
  lights_on
end

p switches_on?(5) == [1, 4]
p switches_on?(10) == [1, 4, 9]
p switches_on?(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

=begin
Algorithm ref:
define method with args (n)
init local var and assign array of n values, each w/ value of O
0 represents the off state
loop over the array with nested array
  loop over from 1..array.size |pass|
  loop over from 0..array_size-1 |idx|
    each time, toggle each switch whenever arrays index number + 1, the switch number, % pass ==
    change 0 to 1, 1 to 0
transform the values of the array to their index number + 1
  loop over the index values, if value == 1, tranform it to idx + 1
select the values of the array that are > 0
=end

def switch1(n)
  array = [0] * n
  (1..array.size).each do |pass|
    array.each_with_index do |num, idx|
    switch = idx + 1
    if switch % pass == 0
      num == 0 ? array[idx] += 1 : array[idx] -= 1
    end
    end
  end
  array.each_index do |idx|
   array[idx] = idx + 1 if array[idx] == 1
 end
  array.select {|n| n > 0}
end

puts
p switch1(5) == [1, 4]
p switch1(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]






# solution using hash
# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

puts
p toggle_lights(1000)