n = [1, 2, 3]
# Append new elements to an array using the push method
puts "Append new elements to an array using the push method"
n.push(4)
n.push(5, 6)
p n # [1, 2, 3, 4, 5, 6]

# Append new elements to an array using the shovel operator
puts "Append new elements to an array using the shovel operator"
n << 7
n << 8 << 9
p n # [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Insert an element (or multiple elements) at a given position
# insert(i, val_1, val_2, ...) where i is the index
# where we want to insert the new values and val_k the
# the series of values to be inserted from the i index
puts "Insert an element (or multiple elements) at a given position"
names = ["Andrew", "John", "Mike"]
names.insert(0, "Elizabeth")
p names # ["Elizabeth", "Andrew", "John", "Mike"]
names.insert(2, "Cass", "Johnas")
p names # ["Elizabeth", "Andrew", "Cass", "Johnas", "John", "Mike"]
names.insert(names.length + 3, "Manny")
p names # ["Elizabeth", "Andrew", "Cass", "Johnas", "John", "Mike", nil, nil, nil, "Manny"]

# Pop one or more elements from the end of an array
puts "Pop one or more elements from the end of an array"
p names.pop # "Manny"
p names # ["Elizabeth", "Andrew", "Cass", "Johnas", "John", "Mike", nil, nil, nil]
p names.pop(1) # [nil]
p names # ["Elizabeth", "Andrew", "Cass", "Johnas", "John", "Mike", nil, nil]
p names.pop(5) # ["Johnas", "John", "Mike", nil, nil]
p names # ["Elizabeth", "Andrew", "Cass"]

# shift method
# The shift method removes and returns one or more elements
# from the beginning of the array
# we can see it as the inverse of the pop method
# shift(N) where N is the number of elements to be removed and returned
names.push("Rogelio", "Alán", "Sergio")
puts("Removing elements from and array using shift")
p names.shift # "Elizabeth"
p names # ["Andrew", "Cass", "Rogelio", "Alán", "Sergio"]
p names.shift(1) # ["Andrew"]
p names # ["Cass", "Rogelio", "Alán", "Sergio"]
p names.shift(3) # ["Cass", "Rogelio", "Alán"]
p names # ["Sergio"]

# unshift method
# Unlike the shift method, the unshift method
# inserts one or more elements at the
# beginning of an array
puts "Inserting elements using unshift"
names.unshift("Andrew")
p names # ["Andrew", "Sergio"]
names.unshift("Isa", "Camila")
p names # ["Isa", "Camila", "Andrew", "Sergio"]