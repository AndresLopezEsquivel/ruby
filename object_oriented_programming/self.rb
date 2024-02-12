# The self keyword represents the object
# (instance) that we are currently working with

class Test
    def print_self_content
        # Equivalent to self.t_s
        # If we are calling this method from the object test_1,
        # then, self == test_1
        p self
    end

    def print_details
        # We use the self keyword within an instance method
        # to call other intance methods
        self.print_class
        # The self keyword can be omitted
        # However, there are certain situation where i is needed
        # For example, when writing the class keyword: class != self.class
        print_class
    end

    def print_class
        # If we are calling this instance method
        # from the object test_1,then
        # self.class == test_1.class
        p self.class
    end
end

test_1 = Test.new
p test_1 # Example of output: #<Test:0x000000010ba5e4a0>
test_1.print_self_content # Example of output: #<Test:0x000000010ba5e4a0>
test_1.print_details 
# Example of output:
# Test
# Test