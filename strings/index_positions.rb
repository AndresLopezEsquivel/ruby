str = "Andrés López"

puts str[0] # prints A
puts str[2] # prints d
puts str[-1] # prints z
puts str[-2] # prints e
p str[100] # prints nil
p str[-100] # prints nil
puts str.slice(0) # same as str[0]
puts str.slice(-1) # same as str[-1]
puts str[0, 2] # prints An (starts at index 0 and pulls out 2 characters)
puts str.slice(0,2) # same as str[0, 2]
puts str[-3, 3] # prints pez (starts at index -3 and pulls out the 3 following characters)

# Strings are mutable, so we can modify its elements
str[-5,5] = "Esquivel"
puts str # prints Andrés Esquivel