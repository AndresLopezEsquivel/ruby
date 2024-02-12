# Other ways of creating getters and setters
# for instance variables are the methods
# attr_reader, attr_writer and attr_accessor

# attr_reader creates a getter for instance variables
# attr_writer creates a setter for instance variables
# attr_accessor creates both getter and setter for instance variables

# If you want to create either a getter, a setter or both
# for an instance vairable, you have to provide to the
# corresponding method (attr_reader, attr_writer or attr_accessor)
# a symbol whose name is the same as the instance variable

class Person

    # Create a getter for the instance variable 'age'
    attr_reader :age
    # Create a getter for the instance variable 'name'
    attr_reader :name
    # Create a setter for the instance variable 'name'
    # The resulting getter will have the form of name=(name)
    attr_writer :name
    # Create both getter and setter for the instance variable 'gender'
    attr_accessor :favorite_color

    def initialize(name, age, favorite_color)
        @name = name
        @age = age
        @favorite_color = favorite_color
    end

end

person_1 = Person.new("Andrew", 23, "Black")

p person_1.age # 23
p person_1.name # "Andrew"
p person_1.favorite_color # Black

person_1.name = "Andres" # Same as person_1.name=("Andrés")
person_1.favorite_color=("Green") # Same as person_1.favorite_color=("Green")

p person_1.name # Andrés
p person_1.favorite_color # Green

