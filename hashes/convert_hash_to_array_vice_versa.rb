hash_example = {
    key_1: "value_1",
    key_2: "value_2",
    key_3: "value_3"
}

array_example = [
    [:key_1, "value_1"],
    [:key_2, "value_2"],
    [:key_3, "value_3"]
]

# Convert a hash to an array

p hash_example.to_a # [[:key_1, "value_1"], [:key_2, "value_2"], [:key_3, "value_3"]]

# Convert an array to a hash

puts
p array_example.to_h # {:key_1=>"value_1", :key_2=>"value_2", :key_3=>"value_3"}