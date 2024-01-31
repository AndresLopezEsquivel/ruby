names = ["name_1", "name_2", "name_3"]
p names # prints ["name_1", "name_2", "name_3"]

# Access to the elements of an array using []
puts "Access to the elements of an array using []"
puts names[0] # name_1
puts names[1] # name_2
puts names[2] # name_3
p names[3] # nil

# Access to the elements of an array using 
# [] and negative indexes
puts "Access to the elements using [] and negative indexes"
puts names[-1] # name_3
puts names[-2] # name_2
puts names[-3] # name_1
p names[-4] #nil

# Access to the elements of an array using the method slice
puts "Access to the elements of an array using the method slice"
puts names.slice(0) # name_1
puts names.slice(-1) # name_3
p names.slice(3) # nil

# Access to the elements of an array using the method []()
puts "Access to the elements of an array using the method []()"
puts names.[](0) # name_1
puts names.[](1) # name_2
puts names.[](2) # name_3
p names.[](3) # nil

# Access to the elements of an array using the fetch method
puts "Access to the elements of an array using the fetch method"
# fetch produces IndexError when the index does not exist
# whereas other ways of indexing arrays produce nil
# With fetch, we can specify a default value when
# the provided index does not exist
puts names.fetch(0) # name_1
puts names.fetch(4, "default_name") # default_name

# Slice an array
puts "Slice an array"
p names[1,2] # ["name_2", "name_3"]
p names.slice(1,2) # ["name_2", "name_3"]

# Append a new element
puts "Append a new element"
names[names.length] = "name_4"
p names # ["name_1", "name_2", "name_3", "name_4"]

names[names.length + 2] = "name_6"
p names # ["name_1", "name_2", "name_3", "name_4", nil, nil, "name_6"]