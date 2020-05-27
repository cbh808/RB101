# input: method call no parameters
# output: random UUID
# example: f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91

# solution 1 using SecureRandom
# note that there is also a SecureRandom.uuid method
require 'securerandom'

def uuid_1
a = SecureRandom.hex
a.insert(8, '-')
a.insert(13, '-')
a.insert(18, '-')
a.insert(23, '-')
a
end

uuid_1

# solution 2 without SecureRandom
def uuid_2
  id_characters = []
  (0..9).each { |num| id_characters << num.to_s }
  ('a'..'f').each { |char| id_characters << char }

  the_uuid = ""
  number_sizes = [8, 4, 4, 4, 12]
  number_sizes.each do |number|
    number.times do 
      the_uuid << id_characters.sample 
    end
    the_uuid << '-'
  end

 the_uuid.chop
end

uuid_2