# combine two lists
# inputs 2 arrays
# output one combined array with elements of input arrays alternated
# algorithm
# appraoch 1: iterate over input array size and append elements from both array (alternating) to new empty array
# approach 2: have two counters, iterate and assign values of arrays to specific indexes of empty array
# appraoch 3: have two counters, and iterate over 1 array and insert elements from into every other elment of other array

def interleave1(arr1, arr2)
  arr3 = []

  i = 0 
  while i < arr1.size
    arr3 << arr1[i] 
    arr3 << arr2[i]
  i += 1
  end
  arr3
end

p interleave1([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']



def interleave2(arr1, arr2)
  arr3 = []

  i = 0
  j = 0
  while i < arr1.size
    arr3[j]     = arr1[i]
    arr3[j + 1] = arr2[i]
  i += 1
  j += 2
  end
  arr3
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']



def interleave3(arr1, arr2)
  i = 0
  j = 0
  while i < arr1.length
    arr2.insert(j, arr1[i])
    i += 1 
    j += 2
  end
  arr2

end

p interleave3([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']