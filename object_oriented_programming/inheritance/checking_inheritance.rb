# The superclass method is a class method
# that returns the name of the class from
# which the current class inherits from

# Remember that a class method cannot
# be called from a object but rather
# from a class

# p 1.superclass won't work

p 1.class # Integer
p 1.class.superclass # Numeric (Integer inherits from Numeric)
p 1.class.superclass.superclass # Object (Numeric inherits from Object)
p 1.class.superclass.superclass.superclass # BasicObject (Object inherits from BasicObject)
p 1.class.superclass.superclass.superclass.superclass # nil (BasicObject is the top class, it doesn't inherit from any class)

# The ancestors method is also a class method
# that returns an array with the names
# of the classes that the current class inherits from
# This array also includes modules

puts
p 1.class.ancestors # [Integer, Numeric, Comparable, Object, Kernel, BasicObject]
p "Hi".class.ancestors # [String, Comparable, Object, Kernel, BasicObject]

# The < symbol lets us check if a class inherits
# directly or indirectly from another class

puts
p Integer < Numeric # true
p Integer < Object # true


# Lets try both methods on a pair of custom classes

class Person
    attr_reader :name, :age
    def initialize(name:, age:)
        @name = name
        @age = age
    end
end

class Student < Person

end

puts
p Student.superclass # Person
p Student.superclass.superclass # Object
p Student.superclass.superclass.superclass # BasicObject
p Student.superclass.superclass.superclass.superclass # nil (BasicObject is the top class, it doesn't inherit from any class)

puts
p Student.ancestors # [Student, Person, Object, Kernel, BasicObject]

# To check if an object is an instance
# of a certain class, use the instance_of? predicate method

student = Student.new(name: "Andrew", age: 23)

puts
puts "Is student an instance of Student? R: #{student.instance_of? Student}" # true
puts "Is student an instance of Person? R: #{student.instance_of? Person}" # false
puts "Is student an instance of Object? R: #{student.instance_of? Object}" # false

# To check if an object belongs to a class lineage
# use the is_a? predicate method

puts
p student.is_a? Student # true
p student.is_a? Person # true
p student.is_a? Object # true
p student.is_a? Integer # true