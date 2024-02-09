# Define a longest_word method that accepts a string.
# The method should return the longest word in the string.
# If two words are tied for maximum length, the method should 
# return the last word in the phrase with that length.
# You can assume:
#  - Every two words are separated by a single space
#  - The string does not contain any symbols or characters
#
# Examples:
# The => indicates the expected return value
# longest_word("Bobby loves big scary kangaroos too")  => "kangaroos"
# longest_word("Ruby is my favorite language")         => "language" 
# longest_word("Hello")                                => "Hello"

def longest_word(str)
    # split(<delimiter>)
    # If <delimiter> is not specified, then
    # the default delimitir is a single space
    words = str.split
    max_len_word = words.length > 0  ? words[0] : ""
    words.each { |word| max_len_word = word if word.length >= max_len_word.length}
    max_len_word
end

p longest_word("")
p longest_word("Bobby loves big scary kangaroos too") # "kangaroos"
p longest_word("Ruby is my favorite language") # language
p longest_word("Hello") # Hello