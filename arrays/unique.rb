# The uniq method returns a new array without duplicates
numbers = [1, 2, 2, 3, 5, 5, 7, 8, 8, 8]

p numbers # [1, 2, 2, 3, 5, 5, 7, 8, 8, 8]
p numbers.uniq # [1, 2, 3, 5, 7, 8]

# There is a bang version of the uniq method

puts
p numbers # [1, 2, 2, 3, 5, 5, 7, 8, 8, 8]
numbers.uniq!
p numbers # [1, 2, 3, 5, 7, 8]
