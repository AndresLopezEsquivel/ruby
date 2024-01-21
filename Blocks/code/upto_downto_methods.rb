# Check section 7: Blocks, of the course Learn to Code
# with Ruby, by Boris Paskhaver

# These methods require both an argument and a block

# upto allows us to go from N up to M (where M is the argument)

5.upto(10) { |i| puts "Using upto, the loop is now at: #{i}"}

puts

-1.downto(-5) { |i| puts "Using downto, the loop is now at: #{i}"}