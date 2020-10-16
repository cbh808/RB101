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

# Algorithm General:
Store spelling blocks in a data structure
Iterate over characters of word
    find block that contains character
    mark that the corresponding block has been used
return true if all blocks have been used < 2 times
else return false

# Algorithm I :
Store spelling blocks in a hash  `blocks` .
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

  blocks[key[0]] += 1
  end

  blocks.values.all? {|v| v < 2}
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true