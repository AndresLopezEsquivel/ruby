# spaceship operator <=>
# Consider A <=> B
# The spaceship operator:
# Returns 0 if A == B
# Returns -1 if A < B
# Returns 1 if A > B
# Return nil if A and B cannot be compared

puts "When A and B are equal"
puts 50 <=> 50 # 0
puts [1, 2, 3] <=> [1, 2, 3] # 0

puts "When A < B"
puts 50 <=> 100 # -1
# <=> compares element by element
# when working with arrays
puts [1, 2, 3] <=> [1, 2, 4] # -1 because 3 < 4 

puts "When A > B"
puts 100 <=> 50 # 1
puts [1, 2, 4] <=> [1, 2, 3]

puts "When A and B are incomparable"
p "a" <=> 1 # nil
p [1, 2, "a"] <=> [1, 2, 3] # nil