def balanced2?(str)
  parentheses = 0
  brackets = 0
  braces = 0
  single_quotes = 0
  double_quotes = 0

  str.each_char do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    brackets += 1 if char == '['
    brackets -= 1 if char == ']'
    braces += 1 if char == '{'
    braces -= 1 if char == '}'
    return false if counter < 0 || brackets < 0 || braces < 0
  end
  return false if single_quotes.odd? || double_quotes.odd? 
  parentheses == 0 && brackets == 0 && braces == 0 ? true : false
end

puts
p balanced2?('What (is) this?') == true
p balanced2?('What is) this?') == false
p balanced2?('What (is this?') == false
p balanced2?('((What) {is this})?') == true
p balanced2?('((What)) (is this)}?') == false
p balanced2?('"Hey!') == false
p balanced2?(']Hey![') == false
p balanced2?('What ((is))) up"') == false