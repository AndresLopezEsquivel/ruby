# unless statement executes if the condition is false

print "Please, enter your name: "
first_name = gets.chomp

unless first_name.downcase.include? "a"
    puts "Your name needs to contain an 'a'"
end