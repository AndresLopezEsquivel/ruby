# Example of an empty hash
empty_hash = {}
p empty_hash
# Example of a hash
hash_example = {
    "integer" => 1,
    "float" => 21.21,
    "boolean" => true,
    "range" => 1..5,
    "array" => ["element1", "element2", 1, 2],
    "hash" => {
        1 => true,
        0 => false,
        true => 1,
        false => 0
    }
}
puts
p hash_example
# Access to a value using its key
puts
p hash_example["array"] # ["element1", "element2", 1, 2]
p hash_example["hash"][true] # 1
# Access to a value using the fetch method
puts
p hash_example["range"] # 1..5
p hash_example["hash"][1] # true
# If the given key does not exist, it returns nil
puts
p hash_example["Integer"] # nil
#  If you use the fetch method and the
# given key does not exist, it throws an exception
# instead of returning nil
puts
# p hash_example.fetch("Integer") #  key not found: "Integer" (KeyError) 
# But, you can provide a default value in case the key does not exist
p hash_example.fetch("Integer", 0) # 0
# Adding new key-value pairs to a hash
whatever = {}
puts
p whatever # {}
whatever["name"] = "Andrés"
p whatever # {"name"=>"Andrés"}
# You can add new key-value pair using the store method
# store(<key>, <value>)
whatever.store(1, true)
p whatever # {"name"=>"Andrés", 1=>true}
# Check Symbols topic
whatever[:school] = "UNAM"
p whatever # {"name"=>"Andrés", 1=>true, :school=>"UNAM"}
whatever.store(:nickname, "Andew")
p whatever # {"name"=>"Andrés", 1=>true, :school=>"UNAM", :nickname=>"Andew"}