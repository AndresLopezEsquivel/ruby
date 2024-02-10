hash_1 = {
    key_1: 1,
    key_2: 2,
    key_3: 3
}

hash_2 = {
    :key_3 => 30,
    :key_4 => 4,
    :key_5 => 5
}

# If there are duplicate keys when merging two hashes,
# the value of the hash that was passed as an argument
# will win

p hash_1.merge(hash_2) # {:key_1=>1, :key_2=>2, :key_3=>30, :key_4=>4, :key_5=>5}
puts
p hash_2.merge(hash_1) # {:key_3=>3, :key_4=>4, :key_5=>5, :key_1=>1, :key_2=>2}

# There is a bang version of the merge method
puts
p hash_1 # {:key_1=>1, :key_2=>2, :key_3=>3}
hash_1.merge! hash_2 # hash_1 has been mutated
puts
p hash_1 # {:key_1=>1, :key_2=>2, :key_3=>30, :key_4=>4, :key_5=>5}