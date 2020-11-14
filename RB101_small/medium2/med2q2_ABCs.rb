=begin
# Problem:
Write a method that takes one arg (string)
See if word can be spelled using give spelling blocks

# inputs:
string of one word
# outputs:
boolean, `true` if can be spelled from give set of blocks, `false` otherwise
# rules:
spelling blocks have two letters each
spelling blocks limit valid words to those that don't use both letters of any block
each block can only be used one time
implicit from examples - blocks are not case sensitve
# Example / Test Case:
see code

# Data Structures:
input string
output boolean

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

# Algorithm I General:
Store spelling blocks in a data structure
Iterate over characters of word
    find block that contains character
    mark that the corresponding block has been used
return true if all blocks have been used < 2 times
else return false

# Algorithm I :
Store spelling blocks in a hash `blocks` .
  create array with blocks as strings  'B:O',etc.
  create empty hash  `blocks`
  iterate over array of string blocks
    create key value pairs
    assign values of all letter blocks to 0
Define method taking one argument `block_word?(word)`
Iterate over each character of word 
  word.each do |char|
# initialize local var `key` 
  # find block in Hash that contains character upcased
    key = blocks.keys.select |k|
      k.include?(char.upcase)
    end
  # increase value of corresponding block used by char
   blocks[key] += 1
  end
return true if all blocks have been used < 2 times
   blocks.values.all? < 2
end
=end
#Code:

def reset_hash
  blocks = {}
  bl_arr = %w(B:O X:K D:Q C:P N:A G:T R:E F:S J:W H:U V:I L:Y Z:M)
    bl_arr.each do |block|
    blocks[block] = 0
    end
  blocks
end

def block_word?(word)
  blocks = reset_hash()
  word.each_char do |char|
    key = blocks.keys.select do |el|
      el.include?(char.upcase)
    end
  blocks[key.join] += 1 # key array to str with .join to get value
  end

  blocks.values.all? {|v| v < 2}
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

=begin
Alg. ref. 
STORE BLOCKS IN ARRAY
Failure Modes: 
IF any combination of letters of any block is used > 1 time, => false
otherwise true
DEF METHOD W/ ONE ARG 
ITERATE OVER ALL BLOCKS STORED IN ARRAY 
  CHECK COUNT OF FIRST LETTER
  CHECK COUNT OF SECOND LETTER
  ADD COUNTS TOGETHER
  number = string.count(array[0]) + string.count(array[1])
  IF number > 1, RETURN false
RETURN TRUE
=end

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
            ['N', 'A'],['G', 'T'], ['R', 'E'],['F', 'S'],
            ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

# def block_word?(str)
#   BLOCKS.each do |arr|
#     number = str.upcase.count(arr[0]) + str.upcase.count(arr[1])
#     return false if number > 1
#   end
#   true
# end

def block_word1?(str)
  BLOCKS.each do |a, b|
    number = str.upcase.count(a) + str.upcase.count(b)
    return false if number > 1
  end
  true
end

puts
p block_word1?('BATCH') == true
p block_word1?('BUTCH') == false
p block_word1?('jest') == true