# Use the sort method to sort an array in ascending/alphabetical order
numbers = [3, 1, 5, 2, 4]
letters = ["a", "d", "c", "e", "b"]

p numbers # [3, 1, 5, 2, 4]
p numbers.sort # [1, 2, 3, 4, 5] <- ascending
p numbers.sort.reverse # [5, 4, 3, 2, 1] <- descending

puts

p letters # ["a", "d", "c", "e", "b"]
p letters.sort # ["a", "b", "c", "d", "e"] <- ascending
p letters.sort.reverse # ["e", "d", "c", "b", "a"] <- desceding