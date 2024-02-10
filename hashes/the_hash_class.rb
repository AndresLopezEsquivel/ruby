# The new method of the Hash class
# can be used to create an empty hash
# with a default object if it is requested
# the value of a non-existent key

default_value = "Default"
empty_hash = Hash.new(default_value)
p empty_hash # {}
p empty_hash[:non_existent_key] # "Default"

# However, the default object is not a
# different object each time the hash
# is requested the value of a non-existent key

example_hash_1 = Hash.new([])
puts
p example_hash_1 # {}
p example_hash_1[:non_existent_key] # []

# example_hash_1[:non_existent_key] returns the
# default object []. If new elements are
# appended to the default object, these
# changes mutate the default object

# Here we append a new element to the default object
# but the key :non_existent_key is not created

example_hash_1[:non_existent_key] << "Hi" 

puts
p example_hash_1 # {}
p example_hash_1[:non_existent_key] # ["Hi"]

example_hash_1[:non_existent_key] << "Hi" 

puts
p example_hash_1 # {}
p example_hash_1[:non_existent_key] # ["Hi", "Hi"]

# To solve this, we can use a block
# to create the non-existent key and
# initialize it with an empty array

# The block is executed every time the hash
# is requested a non-existent key.
# In the block, hash is the current hash object
# and key is the non-existent key

example_hash_2 = Hash.new do |hash, key|
    # [] is a different object every time 
    # (one of the previous problems we faced)
    # the hash is requested a non-existent object.
    # Also, this blocks returns the empty array. 
    hash[key] = []
end

p example_hash_2 # {}
p example_hash_2[:key_1] # :key_1 doesn't exist but will be created an initialized with []
p example_hash_2 # {:key_1=>[]}
example_hash_2[:key_1] << "Hi"
p example_hash_2 # {:key_1=>["Hi"]}