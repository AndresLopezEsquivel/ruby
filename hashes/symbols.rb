# symbols are inmmutable and their purpose
# is to serve as identifiers
symbol_example = :symbol_name
p symbol_example.class
# Symbols can be seen as a lightweight
# version of strings
# The Symbol class has fewer methods
# than the String class
puts
p "string".methods.length
p :symbol.methods.length # < "string".methods.length
# A symbol has a unique identifier
a = :sym
b = :sym
c = :sym
# a.object_id == b.object_id == c.object_id
puts
p a.object_id
p b.object_id
p c.object_id
# Symbols can be used as key when creating hashes
person_1 = {
    :name => "Andrés",
    :nickname => "Andrew",
    :age => 23,
    :student => true

}
puts
p person_1[:name]
p person_1[:nickname]
p person_1[:age]
p person_1[:student]
# There is a shorter way of creating
# hashes when their keys are symbols
# Just move the colon (:) to the
# end of the symbol name and remove
# the hash rocket (=>)
person_2 = {
    name: "Alejandro",
    nickname: "Chikis",
    age: 20,
    student: true
}
puts
p person_2[:name]
p person_2[:nickname]
p person_2[:age]
p person_2[:student]
# From Ruby 3.1, there is an even shorter way
# to create hashes when the names of their keys
# match the names of existing variables
# because their names are the same
red = 255
green = 0
blue = 255
colors = {
    red:, # Looks for a variable named red
    green:, # Looks for a variable named green
    blue: # Looks for a variable named blue
}
puts
p colors # {:red=>255, :green=>0, :blue=>255}