names = [
    "Andrés",
    "Isabel",
    "Alejandro",
    "Héctor"
]

# array[i,N] means extract N elements
#  starting with index i
puts "Extract N elements starting with index i"
p names[0,2] # ["Andrés", "Isabel"]
p names[-2,2] # ["Alejandro", "Héctor"]
p names.slice(1,2) # ["Isabel", "Alejandro"]

# Replace multiple elements at once
puts "Replace multiple elements at once"
names[1,2] = ["Benito", "Luz"]
p names # ["Andrés", "Benito", "Luz", "Héctor"]
names[1,2] = %w[Benito Alejandro Luz Isabel]
p names # ["Andrés", "Benito", "Alejandro", "Luz", "Isabel", "Héctor"]

# Extracting different elements at once using the values_at method
puts "Extracting different elements at once using values_at method"
# The values_at method lets us provide to it any number of indexes
# Remember: names = ["Andrés", "Benito", "Alejandro", "Luz", "Isabel", "Héctor"]
p names.values_at(0,2,4) # ["Andrés", "Alejandro", "Isabel"]
# If there is no element for a given index, returns nil
p names.values_at(2,4,6,7) # ["Alejandro", "Isabel", nil, nil]
# The same element can be extracted multiple times
p names.values_at(names.length - 1, -1) # ["Héctor", "Héctor"]

# Access to array elements using the first and last methods
puts "Access to array elements using the first and last methods"
# The methods first and last can receive the number of elements
# we want to pull out either from the beggining of the
# array (when using first) or from end of it (when using last)
p names.first # "Andrés" <- STRING
p names.first(1) # ["Andrés"] <- ARRAY
p names.first(3) # ["Andrés", "Benito", "Alejandro"]
p names.last # Héctor <- STRING
p names.last(1) # ["Héctor"] <- ARRAY
p names.last(3) # ["Luz", "Isabel", "Héctor"]

# Exercise from Learn to Code with Ruby by Boris Paskhaver
# Define a split_in_two method that accepts an array.
# I'd like to split the array into two arrays.
# If the original array has an even number of elements,
# ensure that the 2 new arrays have an equal number of elements
# If the original array has an odd number of elements,
# ensure that the first new array has the greater number of elements.
#
# Examples:
# The => indicates the expected return value
# split_in_two(["A", "B"])                => [["A"], ["B"]]
# split_in_two(["A", "B", "C", "D"])      => [["A", "B"], ["C", "D"]]
# split_in_two(["A", "B", "C"])           => [["A", "B"], ["C"]]
# split_in_two(["A", "B", "C", "D", "E"]) => [["A", "B", "C"], ["D", "E"]]

def split_in_two(a)
    l = a.length
    [a[0,(0.5 * l).ceil], a[(0.5 * l).ceil,l - (0.5 * l).ceil]]
end

puts "Exercise by Boris Paskhaver"
p split_in_two([1, 2, 3, 4])
p split_in_two([1, 2, 3, 4, 5])