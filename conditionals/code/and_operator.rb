# Check Section 8: Conditionals, of the 
# course 'Learn to Code with Ruby' by Boris Paskhaver
USERNAME = "Andrew"
PASSWORD = "miau123"


puts "Please, enter your username"
# Remember: chomp removes \n
username = gets.chomp
puts "Plase, enter your password"
password = gets.chomp

if username == USERNAME && password == PASSWORD
    puts "Welcome, #{username}."
else
    puts "Incorrect credentials"
end