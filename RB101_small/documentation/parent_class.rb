
# Use irb to run the following code:
s = 'abc'
puts s.public_methods.inspect
# prints a list of all of the public methods available 
# to the String s; this includes not only those methods 
# defined in the String class, but also methods that are 
# inherited from Object (which inherits other methods 
# from the BasicObject class and the Kernel module)



# How would you modify this code to print just the public methods
# that are defined or overridden by the String class?
s = 'abc'
puts s.public_methods(all=false).inspect
# If the all parameter is set to false, only those methods 
#in the receiver will be listed.

# Note from solution:
# A class can override the members of its superclass. In fact, 
# most of the Core and Standard Library API classes do just that. 
# For example, String overrides Object#==. What this means for you 
# is that you must first look at the documentation for your class 
# before looking at the documentation for the superclass. Even if 
# you know that the superclass has a particular method, you should 
# always check that it isn't being overridden by the subclass.