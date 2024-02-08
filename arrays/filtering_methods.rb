# map and collect both do the same
# they transform an array and produce a new one

n = (1..5).to_a
n_squared_1 = n.map { |i| i * i}
n_squared_2 = n.collect { |i| i * i}
puts "With map:"
p n_squared_1 # [1, 4, 9, 16, 25]
puts "With collect"
p n_squared_2 # [1, 4, 9, 16, 25]

# select
# selects elements that meet a certain condition
words = %w[civic level madam andrew dog car]
palindromes_1 = words.select { |w| w == w.reverse }
puts "With select (gets palindromes)"
p palindromes_1 # ["civic", "level", "madam"]

# reject
# rejects elements that don't meet a condition
no_palindromes_1 = words.reject { |w| w == w.reverse}
puts "With reject (rejects palindromes)"
p no_palindromes_1 # ["andrew", "dog", "car"]

# partition
# Splits an array into two arrays based on a certain condition
palindromes, no_palindromes = words.partition { |w| w == w.reverse}
puts "With partition (gets both palindromes and non palindromes)"
p palindromes # ["civic", "level", "madam"]
p no_palindromes # ["andrew", "dog", "car"]

# find/detect
# Unlike select, find/detect returns the first element that matches a given condition
puts "find/detect"
puts words.find { |w| w.include? "e"} # level
puts words.detect { |w| w.include? "a" } # madam

# index / find_index
# Both index and find_index accomplish the same function
# They return the index of the first element that meets the given value
colors = %w[red blue green]
puts "find / find_index"
puts colors.index("red") # 0
puts colors.find_index("green") # 2
p colors.index("purple") # nil

# include?
# Indicates via a boolean value if an
# array contains or not a given value
puts "include?"
puts colors.include?("red") # true
puts colors.include?("black") # false
