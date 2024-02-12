class Vehicle
    attr_reader :wheels
    attr_reader :passengers
    # The value of self at a class level
    # is the name of the class
    puts "From Vehicle, self == #{self} " # From Vehicle, self == Vehicle

    def initialize(wheels, passengers)
        puts "From initialize, self == #{self}" # Example of output: From initialize, self == #<Vehicle:0x000000010b02df30>
        @wheels = wheels
        @passengers = passengers
    end

    # A class method is invoked on the
    # class rather than on an instance
    
    # Example of a class method is
    def self.car # it can also be: Vehicle.car (remember self == Vehicle)
        # Because this is a class method
        # and not an instance method,
        # the value of self is still the name of the class
        # self == Vehicle
        puts "From self.car, self == #{self} " # From self.car, self == Vehicle 
        self.new(4, 5) # Return an initialized object of the class Vehicle
    end
    
end

car = Vehicle.car
p car.wheels # 4
p car.passengers # 5

# Now, a new syntax to create class methods is presented
puts
class Vehicle2

    attr_reader :wheels
    attr_reader :passengers

    class << self # same as class << Vehicle2
        puts "From class << self, self == #{self}" # From class << self, self == #<Class:Vehicle2>
        def car # Don't write self.car or Vehicle2.car
            puts "From car, self == #{self}" # From car, self == Vehicle2
            new(4,5) # There is no need to write self.new
        end
    end

    def initialize(wheels, passengers)
        puts "From initialize, self == #{self}" # Example of output: From initialize, self == #<Vehicle2:0x00000001003dcda8>
        @wheels = wheels
        @passengers = passengers
    end

end

car = Vehicle2.car
p car.wheels # 4
p car.passengers # 5