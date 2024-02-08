def f(a, b, *c, d, e)
    p a
    p b
    p c
    p d
    p e
end

puts "f(1, 2, 3, 4)"
f(1, 2, 3, 4) # a = 1, b = 2, c = [], d = 3, e = 4
puts "f(1, 2, 3, 4, 5, 6, 7)"
f(1, 2, 3, 4, 5, 6, 7) # a = 1, b = 2, c = [3, 4, 5], d = 6, e = 6

# Define a sum_of_string_lengths method that accepts
# any number of strings. The method return the sum
# of the lengths of the strings.
#
# Examples:
# The => indicates the expected return value
# sum_of_string_lengths("bob", "loves", "burgers")     => 15
# sum_of_string_lengths("coding", "is", "so", "fun")   => 13 
# sum_of_string_lengths()                              => 0

def sum_of_string_lengths(*strings)
    sum = 0
    strings.each { |str| sum += str.length}
    sum
end

puts "sum_of_string_lengths(*strings)"
puts sum_of_string_lengths("bob", "loves", "burgers")
puts sum_of_string_lengths("coding", "is", "so", "fun")
puts sum_of_string_lengths()