example_hash = {
    :key_1 => "value1",
    :key_2 => "value2",
    :key_3 => "value3"
}

p example_hash
# include? checks if a key exists in a hash
puts
puts example_hash.include? :key_1 # true
puts example_hash.include? "key_1" # false

# key? and has_key? check if a key exists in a hash

puts
puts example_hash.key? :key_2 # true
puts example_hash.has_key? :key_3 # true
puts example_hash.key? :key_4 # false
puts example_hash.has_key? :key_5 # false

# value? and has_value? check if a value exists in a hash

puts 
puts example_hash.value? "value1" # true
puts example_hash.has_value? "value2" # true
puts example_hash.value? 1 # false
puts example_hash.has_value? :value_1 # false