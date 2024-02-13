# keyword arguments allow to specify
# which parameters the arguments correspond to

# Required keyword parameters
def sum(a:, b:)
    a + b
end

puts sum(a: 1, b: 2) # 3
puts sum(b: 2, a: 5) # 7

# Optional keyword parameters
def multiply(a: 1, b: 1)
    a * b
end

puts
puts multiply # 1
puts multiply(a: 1) # 1
puts multiply(b: 1) # 1
puts multiply(a: 5, b: 6) # 30

# Both positional and keyword arguments

def subtract(a, b: 0)
    # a is a positional argument (it must be provided)
    # b is a optional keyword argument
    a - b
end

puts
puts subtract(1) # a = 1, b = 0 -> 1
puts subtract(5, b: 3) # a = 5, b = 3 -> 2
# puts subtract(b: 3, 5) # This won't work

# Lets rewrite the class of the file hash_as_initialize_argument.rb

class Candidate

    attr_reader :name, :age, :occupation, :hobby, :birthplace

    def initialize(name:,
                   age:,
                   occupation:,
                   hobby: "unknown",
                   birthplace:)

        @name = name
        @age = age
        @occupation = occupation
        @hobby = hobby
        @birthplace = birthplace
    end

end

candidate_1 = Candidate.new(
    name: "Andrew",
    age: 23,
    occupation: "Engineer",
    # hobby: "learning"
    birthplace: "CDMX"
)

candidate_2 = Candidate.new(
    name: "Alex",
    age: 20,
    occupation: "Administrator",
    hobby: "gaming",
    birthplace: "CDMX"
)

puts
p candidate_1.name
p candidate_1.age
p candidate_1.occupation
p candidate_1.hobby
p candidate_1.birthplace
puts
p candidate_2.name
p candidate_2.age
p candidate_2.occupation
p candidate_2.hobby
p candidate_2.birthplace

# Define a Restaurant class below.
#
# The initialize method should accept 6 keyword arguments
# - name (required)
# - address (required)
# - cuisine (required)
# - head_chef (optional: default to empty string)
# - rating (optional; default to 3)
# - menu (optional; default to empty hash)
#
# Assign each keyword argument to an instance variable with the same name
# Define getter methods for all 6 instance variables

class Restaurant

    attr_reader :name, :address, :cuisine, :head_chef, :rating, :menu

    def initialize(
        name:,
        address:,
        cuisine:,
        head_chef: "",
        rating: 3,
        menu: {}
        )
        @name = name
        @address = address
        @cuisine = cuisine
        @head_chef = head_chef
        @rating = rating
        @menu = menu
    end
end

r1 = Restaurant.new(
  name: "La Casa",
  address: "123 Flavortown Street, NJ",
  cuisine: "Patriotic American",
  head_chef: "Guy Fieri",
  rating: 5,
  menu: { wings: 14.99 }
)

r2 = Restaurant.new(
  name: "Hell's Kitchen",
  address: "345 Las Vegas Boulevard, NV",
  cuisine: "British",
)

puts
p r2.head_chef # ""
p r2.rating    # 3
p r2.menu      # {}