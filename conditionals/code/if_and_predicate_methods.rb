first_name = "Andrew"
puts "String to test: #{first_name}"
if first_name.include? "A"
    puts "'A' in contained in #{first_name}"
end

if !first_name.include? "a"
    puts "'a' is not contained in #{first_name}"
end
