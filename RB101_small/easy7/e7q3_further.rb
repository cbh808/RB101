# find 2 more approaches to capitalize words, but don't use string#capitalize method
# input: single string argument
# output: capitalized words
# rules: assume words are any sequence of non-blank characters
# examples: see code
# dataStructure: input string to manipulated array back to string

def word_cap_f1(string)
 arr = string.split
  arr.map! do |word|
    if word.size == 1
      word.upcase
    else
      word[0].upcase + word[1..-1].downcase
    end
  end
  arr.join(' ')
end

p word_cap_f1('four score and seven') == 'Four Score And Seven'
p word_cap_f1('the javaScript language') == 'The Javascript Language'
p word_cap_f1('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap_f2(string)
 arr = string.downcase.chars
 arr[0] = arr[0].upcase
 arr.each_index {|idx| arr[idx] = arr[idx].upcase if arr[idx-1] == ' ' }
 arr.join
end

p word_cap_f2('four score and seven') == 'Four Score And Seven'
p word_cap_f2('the javaScript language') == 'The Javascript Language'
p word_cap_f2('this is a "quoted" word') == 'This Is A "quoted" Word'
