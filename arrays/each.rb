names = ["Andrew", "Mike", "Wick"]
names.each { |name| print "Hi #{name} "} # Hi Andrew Hi Mike Hi Wick 
puts
numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
    print "#{number * number} " # 1 4 9 16 25 
end
puts
# Creating a new array
numbers = (1..20).to_a
even_numbers = []
numbers.each{ |k| even_numbers.push(k) if k.even? }
puts "Creating an array of even numbers: "
p even_numbers
# Nested each
letters = %w[A B C D]
numbers = (1..4).to_a
letters.each do |letter|
    numbers.each do |number|
        print "#{letter}#{number} "
    end
    puts
end
# Output
# A1 A2 A3 A4 
# B1 B2 B3 B4 
# C1 C2 C3 C4 
# D1 D2 D3 D4