# Check section 7: Blocks, of the course Learn to Code
# with Ruby, by Boris Paskhaver

# A block variable is a variable that belongs
# to a block (the block is the execution context)

# The pipes (||) are used to define block variables
# so the name of the variable is up to us, but what it
# represents is determined by the person who built
# the given method.

# Multiple block variables are separated by commas
# |var1, var2, ...|

3.times { |i| puts("Block variable i = #{i}")}

puts

3.times do |count|
    result = 2 * count
    puts "2 * #{count} = #{result}"
end

puts

3.times { |count|
    result = 3 * count
    puts "2 * #{count} = #{result}"
}