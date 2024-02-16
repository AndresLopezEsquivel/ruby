class Operations

    attr_accessor :a, :b

    def initialize(a:, b:)
        @a = a
        @b = b
    end

    def sum
        # Remember a and b are getters (instance methods)
        a + b # Same as self.a + self. b
    end

end