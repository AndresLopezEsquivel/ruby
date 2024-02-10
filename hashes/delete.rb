hash_example = {
    key_1: "value_1",
    key_2: "value_2",
    key_3: "value_3"
}

# Given its key, the delete method deletes a key-value pair
# and returns its value

puts
value_1 = hash_example.delete(:key_1)
p value_1 # "value_1"
p hash_example # {:key_2=>"value_2", :key_3=>"value_3"}

puts
value_2 = hash_example.delete(:key_2)
p value_2 # "value_2"
p hash_example # {:key_3=>"value_3"}