class Person # CamelCase
    # The initialize method cannot be accessed directly
    # by the objects created from this class
    def initialize(name, age, schools)
        # Use @ to create instance variables (attributes)
        # If @ is not used, the variable will be local

        # The external world to an object doesn't have
        # access to the internal intance variables of the object.
        # So, the instance variables of an object are PRIVATE to the external code.

        @name = name
        @age = age
        @schools = schools
    end

    def introduce
        "Hi! My name is #{@name} and I'm #{@age}"
    end

    # Overriding the to_s method
    def to_s
        "name: #{@name} ; age: #{@age} ; number of schools: #{@schools.length}"
    end
end

# To instantiate an object, use the new method
# It will call the initialize method
person_1 = Person.new("Andrew", 23, ["IPN", "UNAM"])
person_2 = Person.new("Isa", 25, ["IPN"])

p person_1 # Example of output: #<Person:0x000000010c6ce6e0 @name="Andrew", @age=23, @schools=["IPN", "UNAM"]>
p person_2 # Example of output: #<Person:0x000000010873d710 @name="Isa", @age=25, @schools=["IPN"]>

# The external world to an object doesn't have
# access to the internal intance variables of the object.
# So, the instance variables of an object are PRIVATE to the external code.

# p person_1.age # would throw undefined method `age' for an instance of Person (NoMethodError)

puts
# The only way we can indirectly interact with them is through methods
p person_1.introduce # "Hi! My name is Andrew and I'm 23"
p person_2.introduce # "Hi! My name is Isa and I'm 25"

# The to_s method has been override
puts
p person_1.to_s # "name: Andrew ; age: 23 ; number of schools: 2"
p person_2.to_s # "name: Isa ; age: 25 ; number of schools: 1"