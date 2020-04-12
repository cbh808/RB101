def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?
bar(foo) 
# foo returns yes regarless of parameter
# bar("yes") returns the false value which is "no"