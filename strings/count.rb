# string.count("abc") won't return the
# number of times the sequence "abc" appears
# in string. It will return the sum of the
# times "a", "b" and "c" appear separately

# Define a custom_count method that accepts a string and a string
# of search characters. The method should count how many times the
# search characters appear in the original string. Do not use the
# built-in count method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_count("Hello World", "l")     => 3
# custom_count("Hello World", "O")     => 0
# custom_count("Hello World", "z")     => 0
# custom_count("Hello World", "lo")    => 5
# custom_count("Hello World", "ol")    => 5

def custom_count(str, chars)
    count = 0
    str.each_char { |s| count += 1 if chars.include?(s) }
    count
end

p custom_count("Hello World", "l") # 3
p custom_count("Hello World", "O") # 0
p custom_count("Hello World", "z") # 0
p custom_count("Hello World", "lo") # 5
p custom_count("Hello World", "ol") # 5