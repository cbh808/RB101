=begin
Q: mutating String methods that do not end with a !. 
#<<
#concat
#replace
#insert


Q: String methods that end with a !, but don't have a non-mutating form? 
A: no such methods found in String class documentation

Q: mutating Array methods that do not end with a ! --- 
Array#push
Array#append
Array#<<

Array#pop
Array#unshift = Array#prepend
Array#shift

Array#insert      (Inserts the given values before the element with the given index.)

Array#delete      (deletes specified element)
Array#delete_at   (deletes specified index)
Array#delete_if
Array#keep_if
Array#compact     (removes nil values)

Array#concat
Array#fill
Array#replace

Q: Array methods that end with a !, but don't have a non-mutating form? 
Array#sort_by! is covered by Enumerable#sort_by, therefore not an example
otherwise none in Array documentation

Q: mutating Hash methods that do not end with a !. 
Hash#clear
Hash#delete
Hash#delete_if
Hash#replace
Hash#keep_if
Hash#rehash
Hash#shift
Hash#update = Hash#merge

Q: Hash methods that end with a !, but don't have a non-mutating form? 
none found in class Hash documentation
=end