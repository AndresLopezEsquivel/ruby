# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.
#
# Examples:
# The => indicates the expected return value
# custom_split("Hi, my name is Boris", " ")  => ["Hi,", "my", "name", "is", "Boris"]
# custom_split("ravioli is delicious", "i")  => ["rav", "ol", " ", "s del", "c", "ous"]
# custom_split("Zebra", "j")                 => ["Zebra"]
# custom_split(" hello", " ")                => ["hello"]

def custom_split(str, del)
    # str is the string
    # del is the delimiter
    current_element = ""
    elements = []
    str.each_char do |c|
        if c != del
            current_element << c
        else
            elements << current_element if !current_element.empty?
            current_element = ""
        end
    end
    elements << current_element if !current_element.empty?
    elements
end

p custom_split("Hi, my name is Boris", " ") # ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j") # ["Zebra"]
p custom_split(" hello", " ") # ["", "hello"]