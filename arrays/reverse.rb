numbers = (1..10).to_a

p numbers # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers.reverse # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
# There is a bang version of the reverse method
# (it mutates the original array)
p numbers # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.reverse!
p numbers # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]