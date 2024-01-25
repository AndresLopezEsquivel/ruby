# single quotes:
# * They are raw strings, which means they do not
# consider the special meaning of symbols such as \n+
# * String interpolation cannot be used with them
# double quotes:
# * String interpolation can only be used with them
# * They consider the special meaning of symbols
# such as \n

puts "Andres\t\tLopez"
puts 'Andres\t\tLopez'
puts "1 + 2 = #{1 + 2}"
puts '1 + 2 = #{1 + 2}'