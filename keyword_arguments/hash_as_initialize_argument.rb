class Candidate

    attr_reader :name, :age, :occupation, :hobby, :birthplace

    def initialize(details)
        @name = details[:name]
        @age = details[:age]
        @occupation = details[:occupation]
        @hobby = details[:hobby]
        @birthplace = details[:birthplace]
    end

end

candidate_1 = Candidate.new({
    name: "Andrew",
    age: 23,
    occupation: "Engineer",
    # hobby: "learning", <- When omitted, details[:occupation].nil? == true
    birthplace: "CDMX"
})

# When the hash is the last
# argument, curly braces ({})
# can be omitted

candidate_2 = Candidate.new(
    name: "Alex",
    age: 20,
    occupation: "Administrator",
    hobby: "gaming",
    birthplace: "CDMX"
)

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