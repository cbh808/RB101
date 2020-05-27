# return an array containing the colors of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colors should be capitalized.
# input: hash
# output: array with subset of values colors capitalized and size in uppercase
# Example: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
# algorithm:
# define empty array
# iterate over each hash value appending fruit colors and vegi sizes to new array
# perform transformation on values to get requested formatting

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

array = []
hsh.each_value do |value|
  if value[:type] == 'fruit'
  array << value[:colors].map do |color|
            color.capitalize
            end
  else
  array << value[:size].upcase
  end
end

array

# alternative: more generalized, can handle other types than fruit/vegetable
# advantage: don't have to define/append and explicitly return a new array
hsh.map do |_, v|
  if v[:type] == 'fruit'
    v[:colors].map do |color|
      color.capitalize
    end
  elsif v[:type] == 'vegetable'
    v[:size].upcase
  end
end