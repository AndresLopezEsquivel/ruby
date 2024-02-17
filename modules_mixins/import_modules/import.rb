require_relative "square.rb" # same as: require "./square.rb"
require_relative "rectangle.rb" # same as: require "./rectangle.rb"

# Modules let us work with
# methods with identical names

p Square.area(10) # 100
p Rectangle.area(10, 20) # 200

# In this example, we are importing different modules
# from different files. This also applies for the functionalities
# of one module: they can be written in different files and imported in one. 