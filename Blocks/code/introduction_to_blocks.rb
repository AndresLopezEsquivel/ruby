# A block is a chunck of code that is associated with
# a method invocation.
# A block is a collection of one or more Ruby statements
# that immediately follow a method call.
# In comparison, an argument is an object, whereas a block
# is a procedure (a collection of code).
# Sometimes, what we need to give a method is not a value
# but a series of instructions
# Check section 7: Blocks, of the course Learn to Code
# with Ruby, by Boris Paskhaver

def sum(a, b)
    a + b
end

# Repeat a procedure a certain number of times

2.times {puts "I'm a block being repeated 2 times by the times function"} # one-line

2.times{
    puts "2 + 5 = #{sum(2, 5)} is being repreated 2 times by the times function" # Multiple lines
}