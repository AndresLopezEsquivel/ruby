range = 1...5
# Check if an element is contained
# in a range using include?
puts "Using include?"
puts "Is 1 contained in range? R: #{range.include?(1)}" # true
puts "Is 2 contained in range? R: #{range.include?(2)}" # true
puts "Is 5 contained in range? R: #{range.include?(5)}" # false
puts "Is 7 contained in range? R: #{range.include?(7)}" # false

# Check if an element is contained
# in a range using member?
# member? does the same as include?

puts "Using member?"
puts "Is 1 contained in range? R: #{range.member?(1)}" # true
puts "Is 2 contained in range? R: #{range.member?(2)}" # true
puts "Is 5 contained in range? R: #{range.member?(5)}" # false
puts "Is 7 contained in range? R: #{range.member?(7)}" # false

# Check if an element is contained
# in a range using ===
# === does the same as include? and member?
# = is for assignment, == for comparison
# and === to check inclusion

puts "Using member?"
puts "Is 1 contained in range? R: #{range === 1}" # true
puts "Is 2 contained in range? R: #{range === 2}" # true
puts "Is 5 contained in range? R: #{range === 5}" # false
puts "Is 7 contained in range? R: #{range === 7}" # false