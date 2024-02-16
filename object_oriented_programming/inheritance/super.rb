# the super keyword calls the superclass method that
# has the same name as the one that is
# calling it

class Person

    attr_accessor :name, :age

    def initialize(name:, age:)
        @age = age
        @name = name
    end

    def say_hi_to(somebody:)
        "Hi, #{somebody}! My name is #{self.name}."
    end

    def say_color(color: "blue")
        "A wonderful color is #{color}"
    end

end

class Child < Person

    attr_accessor :height

    def initialize(name:, age:, height:)

        # Here, super calls the initialize
        # method of the class Person

        # When super is called without parentheses,
        # it takes all parameters from this method

        # super is equivalent to super(name: name, age: age, height: heihgt)
        # So, in this particular case, super would throw an error
        # because it doesn't receive any parameter called height

        super(name: name, age: age)
        @height = height

    end

    def say_hi_to(somebody:)
        # When super is called without parentheses,
        # it takes all parameters from this method

        greet = super # Equivalent to super(somebody: somebody)
        "#{greet} Do you like candies?"

    end

    def say_color
        super() # super won't take any argument
    end

end

child = Child.new(name: "Andrés", age: 24, height: 1.66) # I suspect he is not a child

p child.name # Andrés
p child.age # 24
p child.height # 1.66
p child.say_hi_to(somebody: "Max") # "Hi, Max! My name is Andrés. Do you like candies?"
p child.say_color # "A wonderful color is blue"
