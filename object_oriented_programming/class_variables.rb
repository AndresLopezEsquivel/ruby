class Test
    # Example of a class variable
    @@count = 0

    # Example of a class method
    # It will act as a getter for the
    # class variable count
    def self.get_count
        @@count
    end

    # This is an instance method
    def initialize
        @@count += 1
    end

    # class variables can be accessed
    # from instance methods
    def count
        @@count
    end

end

puts Test.get_count # 0

test_1 = Test.new

puts Test.get_count # 1
puts test_1.count # 1

test_2 = Test.new

puts Test.get_count # 2
puts test_1.count # 2
puts test_2.count # 2


# EXERCISE

# Define a SushiLunchOrder class below.
#
# A SushiLunchOrder object should initialize with @salmon, @tuna,
# and @yellowtail instance variables from arguments to the
# initialize method. All values will be integers representing
# the number of that type of fish in the lunch order.
#
# Define getter methods for the 3 instance variables.
#
# Define a salmon_special class method that instantiates a
# SushiLunchOrder instance with 6 pieces of salmon, 3 pieces
# of tuna, and 3 pieces of yellowtail.
#
# Define a family_combo class method that instantiates a
# SushiLunchOrder instance with 12 pieces of salmon, 12 pieces
# of tuna, and 12 pieces of yellowtail.
#
# Define a total_pieces class variable that keeps track of
# the TOTAL number of pieces of fish that have been sold.
# This is not the number of SushiLunchOrder instances but rather
# the sum of all the parts of fish.
#
# Define a total_pieces class method that exposes the value of
# the total_pieces class variable.
puts

class SushiLunchOrder

    @@total_pieces = 0

    class << self

        def salmon_special
            new(6, 3, 3)
        end

        def family_combo
            new(12, 12, 12)
        end

        def total_pieces
            @@total_pieces
        end

    end

    attr_reader :salmon, :tuna, :yellowtail

    def initialize(salmon, tuna, yellowtail)
        @salmon = salmon
        @tuna = tuna
        @yellowtail = yellowtail
        @@total_pieces += salmon + tuna + yellowtail
    end

end

order1 = SushiLunchOrder.salmon_special
p order1.salmon     # 6
p order1.tuna       # 3
p order1.yellowtail # 3
p SushiLunchOrder.total_pieces # 12

puts

order2 = SushiLunchOrder.family_combo
p order2.salmon     # 12
p order2.tuna       # 12
p order2.yellowtail # 12
p SushiLunchOrder.total_pieces # 48

puts

order3 = SushiLunchOrder.new(3, 4, 5)
p order3.salmon     # 3
p order3.tuna       # 4
p order3.yellowtail # 5
p SushiLunchOrder.total_pieces # 60
