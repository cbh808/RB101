# what happens
if false
  greeting = “hello world”
end

greeting
# would expect undefined local variable or method error
# however local variable defined in if block initializes to nil
# regardless of whether or not block is executed

