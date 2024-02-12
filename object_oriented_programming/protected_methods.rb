class Person

    def initialize(name, birth_year)
        @name = name
        @birth_year = birth_year
        @age = self.calculate_age() # same as calculate_age() without self
    end

    def say_hi
        "Hi! My name is #{@name} and I'm #{@age}"
    end

    def compare_age_with(person)
        # person is of the class Person
        # age is a protected method
        @age < person.age ? "#{@name} is younger" : "#{@name} is older"
    end 

    private

    def calculate_age
        current_year = 2024
        current_year - @birth_year
    end

    # protected methods can only be accessed by
    # internal methods or by objects of the same class
    protected # Methods below this keyword are protected

    def age
        @age
    end

end

andres = Person.new("Andrés", 2000)
alex = Person.new("Alejandro", 2003)
isa = Person.new("Isabel", 1998)

puts andres.compare_age_with(alex) # Andrés is older
puts andres.compare_age_with(isa) # Andrés is younger