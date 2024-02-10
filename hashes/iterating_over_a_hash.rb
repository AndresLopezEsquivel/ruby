example_hash = {
    key_1: "value_1",
    key_2: "value_2",
    key_3: "value_3"
}

# Same as
# example_hash = {
#     :key_1 => "value_1",
#     :key_2 => "value_2",
#     :key_3 => "value_3"
# }

p example_hash

# Use each when iterating over both keys and values
puts
puts "Using each"
example_hash.each { |k, v| puts "key: #{k}, value: #{v}"}

# Use each_key when iterating over each key

puts
puts "Using each_key"
example_hash.each_key { |k| puts "key: #{k}"}

# Use each_value when iterating over each value

puts
puts "Using each_value"
example_hash.each_value { |v| puts "value: #{v}"}

# Use the method keys to get an array with the keys of a hash

puts
puts "Using keys method"
p example_hash.keys # [:key_1, :key_2, :key_3]

# Use the method values to get an array with the values of a hash

puts
puts "Using values method"
p example_hash.values # ["value_1", "value_2", "value_3"]