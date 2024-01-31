# while loop

i = 0
n = 11
puts "while loop: "
while i < n
    print i.to_s + " "
    i += 1
end
puts

# until loop
# Executes until the given condition is true

i = 0
n = 10
puts "until loop: "
until i > n
    print i.to_s + " "
    i += 1
end
puts

# next keyword (to move to next iteration)
# break (to completely terminate the loop)
i = 0
n = 17
puts "Using next and break"
while i <= n
    if i % 2 == 0
        i += 1
        next
    elsif i == 15
        break
    else
        print i.to_s + " "
    end
    i += 1
end
puts 