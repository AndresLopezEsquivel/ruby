class Person

    def initialize
        @name = "Andrew"
        @age = 23
    end

    # It is a convention to name the getter
    # the same as the instance variable

    # A getter method to retrieve the value
    # of the instance variable 'name'

    def name
        @name
    end

    # A getter method to retrieve the value
    # of the instance variable 'age'

    def age
        @age
    end

    # It is a convention to add an = sign
    # at the end of the setter

    # If an = sign is added and, for example,
    # the method's header is age=(<param>),
    # then, it can be called as
    # obj.age = <arg> instead of obj.age(<arg>)

    # A setter method to modify the value
    # of the instance variable 'name'

    def name=(name)
        @name = name
    end

    # A setter method to modify the value
    # of the instance variable 'age'

    def age=(age)
        @age = age
    end

end

person_1 = Person.new
# Calling the name instance method
p person_1.name # "Andrew"
# Calling the age instance method
p person_1.age # 23

person_1.name = "Andrés" # Same as person_1.name=("Andrés").
                         # This is possible because the method's name is name=
                         # Otherwise, it wouldn't be possible

person_1.age=(24) # Same as person_1.age = 24

p person_1.name # "Andrés"
p person_1.age # 24

# == EXERCISE ==

# Define a Product class below.
#
# A Product object should initialize with a @name and @price
# These values should be set to arguments to the initialize method
# @name will be a string and @price will be a floating-point value.
#
# Define getter methods for the 2 instance variables.
#
# Define setter methods for the 2 instance variables.
#
# When overwriting the product's price, the new price should be
# greater than 0. If it's not greater than 0, do not overwrite 
# the old price value.
#
# When overwriting the product's name, the new name should have a
# length between 3 and 20 characters. If it doesn't fulfill that
# criteria, overwrite the name to "TBD" instead.

class Product

    attr_reader :name # Check attr.rb file for more information
    attr_reader :price # Check attr.rb file for more information

    def initialize(name, price)
        @name = name
        @price = price
    end

    def name=(name)
        @name = name.length.between?(3,20) ? name : "TBD"
    end

    def price=(price)
        @price = price if price > 0
    end

end

book = Product.new("1984", 9.99)
puts
p book.name # "1984"
book.name = "Harry Potter"
p book.name # "Harry Potter"

book.name = "OK"
p book.name # "TBD"

p book.price # 9.99

book.price = 24.99
p book.price # 24.99

book.price = -100
p book.price # 24.99