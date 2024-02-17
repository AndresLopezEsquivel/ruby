module SomeModule

    def self.some_module_method
        "Hi! I'm #{self}"
    end

    def some_method
        puts "Hey! Here some_method from SomeModule"
    end

end

# When using the include keyword, every instance
# of the class, will get the instance methods of the module 

# When two instance methods, one from a class 
# and one from a module, are named the same,
# the class' method has a higher priority than
# the module's method when using the include keyword.

class ClassOne

    include SomeModule

    def some_method
        puts "Hey! Here some_method from SomeClassOne"
    end

end

# When using the prepend keyword, every instance
# of the class will get the instance methods of the module.
# However, when two instance methods, one from the class 
# and one from the module, are named the same,
# the module's method has a higher priority than
# the class' method when using the prepend keyword.

class ClassTwo

    prepend SomeModule

    def some_method
        puts "Hey! Here some_method from SomeClassTwo"
    end

end

# When using the extend keyword, the instance methods
# of the module will be mixed into the class
# as class methods

class ClassThree

    extend SomeModule

    def some_method
        puts "Hey! Here some_method from SomeClassTwo"
    end

end

class_one_obj = ClassOne.new
class_two_obj = ClassTwo.new
class_tree_obj = ClassThree.new

# Here, the include keyword was used
class_one_obj.some_method # Hey! Here some_method from SomeClassOne
p ClassOne.ancestors # [ClassOne, SomeModule, Object, Kernel, BasicObject]

# Here, the prepend keyword was used
puts
class_two_obj.some_method # Hey! Here some_method from SomeModule
p ClassTwo.ancestors # [SomeModule, ClassTwo, Object, Kernel, BasicObject]

# Here, the extend keyword was used
puts
ClassThree.some_method # Hey! Here some_method from SomeModule
p ClassThree.ancestors # [ClassThree, Object, Kernel, BasicObject]