puts "Methods with arguments, include?"
name = "Andrew"
puts "#{name} includes 'A': #{name.include? "A"}" # true
puts "#{name} includes 'a': #{name.include? "a"}" # false
# Parentheses are optional in Ruby
puts "#{name} includes 'w': #{name.include?("w")}" # true
puts "#{name} includes 'W': #{name.include?("W")}" # false
# Advice:
# If the method receives arguments, use parentheses.
# Otherwise, don't use them