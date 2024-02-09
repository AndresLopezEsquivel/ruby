# .index(k) returns the index of the first occurrence 
# .index(k, i) returns the index of the first occurrence. The search start at the index i
# .rindex(k) starts to search from the end but the index it produces is
# with respect to the beginning

word = "My name is Andrew"
p word.index("e") # 6
p word.index("e", 8) # 15
p word.rindex("e") # 15

# Define a custom_index method that accepts a string and a search term.
# The method should return the first index position of the 
# search term within the string. If the search term does not exist,
# return nil. Do not use the built-in index method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_index("I am very handsome", "I")     => 0
# custom_index("I am very handsome", "e")     => 6
# custom_index("I am very handsome", "Z")     => nil
# custom_index("I am very handsome", "am")    => 2
# custom_index("I am very handsome", "ma")    => nil

def custom_index_v1(str, term)
    idx = nil
    term_array = term.chars
    term_index = 0
    verifying  = false
    str.chars.each_with_index do |w, i|
        if w == term_array[term_index]
            if term_index == term_array.length - 1
                idx = i - (term.length - 1)
                break
            else
                term_index += 1
            end
        else
            term_index = 0
            idx = nil
        end
    end
    idx
end

def custom_index_v2(str, term)
    str.chars.each_with_index do |char, idx|
        seq = str[idx,term.length] # If it surpasses the length of the array, it will return nil elements
        return idx if seq == term
    end
    nil
end

puts "custom_index_v1"
p custom_index_v1("I am very handsome", "I")
p custom_index_v1("I am very handsome", "e")
p custom_index_v1("I am very handsome", "Z")
p custom_index_v1("I am very handsome", "am")
p custom_index_v1("I am very handsome", "ma")
p custom_index_v1("I am very handsome", "some")

puts "custom_index_v2"
p custom_index_v2("I am very handsome", "I")
p custom_index_v2("I am very handsome", "e")
p custom_index_v2("I am very handsome", "Z")
p custom_index_v2("I am very handsome", "am")
p custom_index_v2("I am very handsome", "ma")
p custom_index_v2("I am very handsome", "some")