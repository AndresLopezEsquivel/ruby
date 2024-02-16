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

end

employee = Employee.new(name: "Andrew", age: 24)
manager = Manager.new(name: "Manny", age: 70) # Manager is inheriting the initialize method from Employee

p employee.introduce # "Hi, my name is Andrew and I'm 24"
p manager.introduce # "Hi, my name is Manny and I'm 70"
p manager.yell # "Are you working?!"