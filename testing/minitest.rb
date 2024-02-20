# To know more about MiniTest, check
# https://docs.seattlerb.org/minitest/

require "minitest/autorun"

class InvalidAttack < StandardError
end

class Pokemon

    attr_reader :name, :type, :attacks

    def initialize (name:, type:)
        @name = name
        @type = type
        @attacks = []
    end

    def add_attack(attack)
        # We get by reference
        # the attacks array
        raise InvalidAttack unless attack.is_a? String
        attacks << attack
    end
end

# Create a class that inherits
# from the MiniTest::Test class

class TestPokemon < Minitest::Test

    def setup
        # The setup method runs before
        # each test method (example, test_name)
        @pokemon1 = Pokemon.new(name: "Pokemon1", type: :type1)
        @pokemon2 = Pokemon.new(name: "Pokemon2", type: :type2) 
    end

    def teardown
        # The teardown method runs after each
        # test method (example, test_name)

        # Use it, for example, to close a
        # connection to a database

        # ...
    end

    def test_name
        # To check equality
        assert_equal("Pokemon1", @pokemon1.name, "Invalid name")
        assert_equal("Pokemon2", @pokemon2.name, "Invalid name")
    end

    def test_type
        # To check equality
        assert_equal(:type1, @pokemon1.type, "Invalid type")
        assert_equal(:type2, @pokemon2.type, "Invalid type")
    end

    def test_attacks
        # To check inclusion
        @pokemon1.attacks << "Attack 1"
        assert_includes(@pokemon1.attacks, "Attack 1", "Attack is not included")

        @pokemon2.attacks << "Attack 2"
        assert_includes(@pokemon2.attacks, "Attack 2", "Attack is not included")
    end

    def test_invalid_attack
        # To check error handling
        assert_raises(InvalidAttack, "Didn't recognize invalid attack") do
            @pokemon1.add_attack(12)
        end
    end

end