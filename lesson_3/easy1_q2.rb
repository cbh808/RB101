# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
# ? and ! can be part of a method name - supposed to follow common usage 
# ? used for boolean true/false
# ! used to negate a boolean result


#     what is != and where should you use it?  => comparison operator 'not equal to'
          # use as comparison, flow control

#     put ! before something, like !user_name  => 'not' something 
          # turns into opposite of boolean equivalent

#     put ! after something, like words.uniq! => often mutates the caller
          # use to mutate the object and not create a new object

#     put ? before something =>  

#     put ? after something => reflects a boolean result of the 'something'
          # use as method or variable name
          # ? : is the ternary operator for if...else, e.g.     condition ? true : false

#     put !! before something, like !!user_name => double 'not', e.g. not not true = true
          # use to turn something into boolean equivalent 
