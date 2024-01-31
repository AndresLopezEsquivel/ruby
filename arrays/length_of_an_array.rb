numbers = [9, 2, 2, 3, 4, 5, 6, 7, 4, 9, 9]

# Get the length of an array using the method length
# It can be length or length()
puts "Get the length of an array using the method length"
puts numbers.length # 11

# Get the length of an array using the method size
# Same result as using length
puts "Get the length of an array using the method size"
puts numbers.size # 11

# Count how many times an element appears inside the array
puts "Count how many times an element appears inside the array"
puts numbers.count # 11 <- Same as length and size
puts numbers.count(9) # 3
puts numbers.count(4) # 2
puts numbers.count(3) # 1 