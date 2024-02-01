# A range is an ordered sequence of numbers or letters
# i..k creates a range from i to k including k
# i...k creates a range from i to k but k is not included
puts "Create a numerical range"
inclusive_range = 1..5
exclusive_range = 1...5

puts inclusive_range.first # 1
puts exclusive_range.first # 1
puts
puts inclusive_range.last # 5
# Although is an exclusive range,
# Ruby still considers the last value as 5
# but check what we get if we use
# last(1)
puts exclusive_range.last # 5 
p exclusive_range.last(1) # [4] <- Actually, the last
puts
p inclusive_range.first(3) # [1, 2, 3]
p exclusive_range.first(3) # [1, 2, 3]
puts
p inclusive_range.last(3) # [3, 4, 5]
p exclusive_range.last(3) # [2, 3, 4]

# Create an alphabetical range
puts "Create an alphabetical range"
inc_alp_range = "a".."g"
exc_alp_range = "A"..."G"

p inc_alp_range.first(3) # ["a", "b", "c"]
p exc_alp_range.first(3) # ["A", "B", "C"]
puts
p inc_alp_range.last(3) # ["e", "f", "g"]
p exc_alp_range.last(3) # ["D", "E", "F"]

# Convert a range to an array
puts "Convert a range to an array"
p inclusive_range.to_a # [1, 2, 3, 4, 5]
p exclusive_range.to_a # [1, 2, 3, 4]