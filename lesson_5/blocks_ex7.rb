a = [["1", "8", "11"], ["1", "8", "9"], ["2", "12", "15"], ["2", "6", "13"]]
p a

b = a.sort_by do |sub_arr|
    p sub_arr
    c = sub_arr.map do |num|
        num.to_i
      end
    p c
  end

p b 
p a