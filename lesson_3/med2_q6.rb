# Remove unnecessary duplication in this method:
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# the following evaluates to true:
def color_valid(color)
  color == "blue" || color == "green"
end