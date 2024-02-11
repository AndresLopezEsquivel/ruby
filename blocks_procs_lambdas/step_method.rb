# Check section 7: Blocks, of the course Learn to Code
# with Ruby, by Boris Paskhaver

# start.step(end, increment){}
start_val = 0
end_val = 20
increment_val = 2

start_val.step(end_val, increment_val) do |i|
    puts "I'm on my way to #{end_val} in steps of #{increment_val}"
    puts "I'm now on #{i}"
    puts
end