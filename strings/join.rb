names = %w[name1 name2 name3]
puts "Built-in join method: "
p names.join # "name1name2name3"
p names.join(',') # "name1,name2,name3"
p names.join('--') # "name1--name2--name3"

# Define a custom_join method that accepts an array of strings
# and a delimiter. The method should merge/join the array elements
# together into a single string. It should insert the delimiter
# in between every two subsequent elements. Do not use the
# built-in join method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_join(["red", "green", "blue"], "!") => "red!green!blue"
# custom_join(["Big", "Mac"], "$$")          => "Big$$Mac"
# custom_join([], "$$$")                     => ""

def custom_join(strings, delim)
    # strings is the arrays of strings
    # delim is the delimiter
    joined_elements = ""
    # strings.each_with_index do |str, idx| 
    #     if idx != strings.length - 1
    #         joined_elements << str << delim
    #     else
    #         joined_elements << str
    #     end
    # end
    strings.each_with_index do |str, idx|
        joined_elements << str
        joined_elements << delim unless idx == strings.length - 1
    end
    joined_elements
end

puts "Custom join method:"
p custom_join(["red", "green", "blue"], "!") # "red!green!blue"
p custom_join(["Big", "Mac"], "$$") # "Big$$Mac"
p custom_join([], "$$$") # ""