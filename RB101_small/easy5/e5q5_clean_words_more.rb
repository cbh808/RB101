# alternative1:
# create array of alpahbetical characters 
ALPHABET = ('a'..'z').to_a 

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      #check if last character of new array is already a ' '
      clean_chars << ' ' unless clean_chars.last == ' ' 
    end
  end

  clean_chars.join
end 

cleanup("---what's my +*& line?")
cleanup("-- -what'-s  my +*& line?k//")

# alternative2:
  #'/[^a-z]/i matches chars not an uppercase or lowercase letter
  #  /i makes expression case insensitive
  # gsub replaces chars matching the regex in the 1st argument with 2nd argument
  # squeeze squeezes out the duplicate spaces
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end
