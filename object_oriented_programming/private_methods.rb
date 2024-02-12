class Person

    def initialize(name, birth_year)
        @name = name
        @birth_year = birth_year
        @age = self.calculate_age() # same as calculate_age() without self
    end

    def say_hi
        "Hi! My name is #{@name} and I'm #{@age}"
    end

    # private methods can only be accessed by internal methods
    private # Methods below this keyword are private

    def calculate_age
        current_year = 2024
        current_year - @birth_year
    end

end

person_1 = Person.new("Andrés", 2000)

p person_1.say_hi # "Hi! My name is Andrés and I'm 24"
# p person_1.calculate_age # private method `calculate_age' called for an instance of Person (NoMethodError) 