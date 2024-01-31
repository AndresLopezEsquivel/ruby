# Multidimensional array

bidi_array = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12]
]

p bidi_array

first_row, second_row, third_row = bidi_array

p first_row
p second_row
p third_row

# Shortcut to declare an array of strings
names = ["name_1", "name_2", "name_3"]
p names
# It can be either %w or %W
# strings are not written inside quotes
# and there is no need to use commas to
# separate them
names = %W[name_1 name_2 name_3]
p names



# Declare an empty_array method that returns an empty array
def empty_array
    []
end

# Declare a three_colors method that returns an array with
# the strings of "red", "green", and "blue" (in that order)
def three_colors
    %w[red green blue]
end

# Declare a five_favorite_numbers method that returns an
# array of 5 integers. The integers are up to you.
def five_favorite_numbers
    [1, 2, 3, 4, 5]
end