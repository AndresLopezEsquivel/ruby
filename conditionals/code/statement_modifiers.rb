# Statement modifiers can be used to reduce the amount of code
# They can only be used whenever the if/unless statement has one line

print "Please, enter your name: "
first_name = gets.chomp
puts "Your name contains 'a/A'" if first_name.downcase.include? "a"
puts "Your name doesn't contain 'a/A'" unless first_name.downcase.include? "a"