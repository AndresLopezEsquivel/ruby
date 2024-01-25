first_name = "Andrés"
last_name = "López"

full_name_1 = first_name + " " + last_name
puts full_name_1 # prints Andrés López

full_name_2 = first_name
full_name_2 += " #{last_name}"
puts full_name_2 # prints Andrés López

# This operations modifies first_name although it doesn't seem to do so
# It generates a new object
first_name.concat(" ", last_name)
puts first_name # prints Andrés López

# Adds last_name at the beginning of first_name
# The prepend method mutates the value of first_name
first_name = "Andrés"
first_name.prepend(last_name, " ")
puts first_name # prints López Andrés

# Shovel operator:
# Concats at the end of a given string
# Like concat and prepend, the shovel operator mutates
# the object to which it is applied
full_name_3 = "Andrés"
full_name_3 << " López" << " Esquivel"
puts full_name_3 # prints Andrés López Esquivel