USERNAME1 = "Andrew"
USERNAME2 = "Isa"

puts "Enter your username"
username = gets.chomp

if username == USERNAME1 || username == USERNAME2
    puts "Welcome, #{username}"
else
    puts "Incorrect credentials"
end