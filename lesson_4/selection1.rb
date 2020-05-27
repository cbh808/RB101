produce = {
  'apple' => 'Fruit',
  'carrot' => 'Produce',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# convert produce to array of arrays, each array with key/value
# iterate over array elements to check if values contain 'Fruit'
# if 'Fruit', then copy element to another array
# convert that array back to a hash and return

def select_fruit(products)
  fruity_array = []
  temp_array = products.to_a  
  i = 0

  loop do
    break if i == temp_array.size

    if temp_array[i][1].include?('Fruit')
      fruity_array << temp_array[i]
    end

    i += 1
  end

  fruity_hash = fruity_array.to_h
end

select_fruit(produce)

# alt:
# iterate hash using keys of hash and original hash


def select_fruit1(products)
  fruity_hash = {}
  product_keys = products.keys
  counter = 0
  
  loop do 
    break if counter == product_keys.size

    temp_key = product_keys[counter]
    temp_value = products[temp_key]

    if temp_value == 'Fruit' 
      fruity_hash[temp_key] = temp_value
    end 

    counter += 1
  end
  fruity_hash
end
select_fruit1(produce)

