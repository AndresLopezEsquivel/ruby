class Employee

    attr_accessor :name, :age

    def initialize(name:, age:)
        @name = name
        @age = age
    end

    def introduce
        "Hi, my name is #{self.name} and I'm #{self.age}"
        # same as "Hi, my name is #{self.name} and I'm #{self.age}"
    end

end

# Manager inherits from the class Employee

class Manager < Employee

    def yell
        "Are you working?!"
    end

    # Manager overrides the method introduce
    def introduce
        "Hi, my name is #{self.name} and I'm a manager"
    end

end

class Worker < Employee

    def yell
        "I'm working, I'm working" # He is not really working
    end

end

manager = Manager.new(name: "Manny", age: 70)
worker = Worker.new(name: "Andrés", age: 23)

p manager.introduce # "Hi, my name is Manny and I'm a manager"
p worker.introduce # "Hi, my name is Andrés and I'm 23"