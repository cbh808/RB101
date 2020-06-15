def crunch(text)
  crunch_text = ''
  text.each_char do |char|
    crunch_text << char unless char == crunch_text[-1]
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''