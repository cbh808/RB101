require 'pry'

def joinor(empty_squares, sep=', ', last_sep='or')
  #binding.pry
  if empty_squares.size > 1
    empty_squares[0..-2].join(sep) + " #{last_sep} " + empty_squares[-1].to_s
  else
    empty_squares.to_s
  end
end

p joinor([1])
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2 or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2 or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2 and 3"
