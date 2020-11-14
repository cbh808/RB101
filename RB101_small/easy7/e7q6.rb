# same problem as e7q5.rb except:
# ignore non-alphabetic chars when determining whether
# each letter is uppercase or lowercase
def staggered_case(string)
  new_string = ''
  i = 0
  string.chars.each do |char|
    if i.even?
      new_string += char.upcase
    else
      new_string += char.downcase
    end
    i += 1 if char =~ /[a-zA-Z]/
  end
  new_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
