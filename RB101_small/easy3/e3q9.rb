def palindrome?(string)

  pairs = (string.length)/2
  for i in 1..pairs
    if string[i-1] != string[-i]
      return false
    end
  end
  return true
end

def real_palindrome?(string)
  string = string.downcase.gsub(/\W/,"")
  palindrome?(string)
end
# Regex: /\W/ - A non-word character ([^a-zA-Z0-9_]). 
