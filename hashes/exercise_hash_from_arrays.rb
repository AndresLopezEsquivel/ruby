# Define a hash_from_arrays method that accepts two arrays.
# The two arrays will be equal in length.
# Return a hash where the the elements of the first array
# are the keys and the elements of the second array are
# the elements. Match the elements across the two arrays
# by their shared index position.
#
# Examples:
# The => indicates the expected return value
# hash_from_arrays(["red", "green", "blue"], [1, 2, 3])   => {"red"=>1, "green"=>2, "blue"=>3}
# hash_from_arrays([:hello, :happy], [:goodbye, :sad])    => {:hello=>:goodbye, :happy=>:sad}
# hash_from_arrays([], [])                                => {}
def hash_from_arrays(array_1, array_2)
    result = {}
    (0...array_1.length).each { |i| result.store(array_1[i], array_2[i]) } 
    result
end

p hash_from_arrays(["red", "green", "blue"], [1, 2, 3]) # {"red"=>1, "green"=>2, "blue"=>3}
p hash_from_arrays([:hello, :happy], [:goodbye, :sad]) # {:hello=>:goodbye, :happy=>:sad}
p hash_from_arrays([], []) # {}