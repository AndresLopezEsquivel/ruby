# To test your regular expressions, visit
# the following sites:
# https://regex101.com/
# https://rubular.com/

# You can find more about regular expressions
# at https://www.rexegg.com/regex-quickstart.html

# To know more about the Regexp class in Ruby
# check https://ruby-doc.org/core-2.6.3/Regexp.html

# Regular expressions are written inside
# a pair of forward slashes (//)

p //.class # Regexp

# The =~ operator returns the index
# at which the first match starts
# If it doesn't match anything, returns nil

some_string = "abcdefga"

puts

p some_string =~ /a/ # 0
p some_string =~ /b/ # 1
p some_string =~ /c/ # 2

# The scan method returns an array
# whose elements are the matches

some_string = "123 abc 1a2 456 fgd 2k3"

puts

p some_string.scan(/\d{3}/) # ["123", "456"]
p some_string.scan(/[a-z]{3}/) # ["abc", "fgd"]
p some_string.scan(/\d[a-z]\d/) # ["1a2", "2k3"]

# The sub method replaces the first match with
# a given new element

puts

p "123-456-789-123".sub(/\d-\d/, "_") # "12_56-789-123"

# The gsub method replaces all matches with
# a given new element

puts

p "123-456-789-123".gsub(/\d-\d/, "_") # "12_5_8_23"

# Exercise

# Define an calculate_grocery_total method that accepts a string.
# The string describes the goods I purchased at the supermarket 
# along with their prices.
# 
# The prices will alway be written in the following format:
#   $24.99
#   -> dollar sign
#   -> dollar amount
#   -> single dot
#   -> cent amount
#
# Calculate the total cost of my groceries. Return the value as a 
# floating-point number.
#
# Examples:
# The => indicates the expected return value
#
# calculate_grocery_total("I purchased 4 apples for $9.99, 3 boxes of strawberries for $19.99, and one box of cereal for $5.49.")
#  => 35.47

def calculate_grocery_total(str)
    # sum = 0
    # str.scan(/\$\d+\.\d+/).each { |price|
    #     sum += price.gsub(/\$/,"").to_f
    # }
    # sum

    str.scan(/\$\d+\.\d+/).map { |price| price.gsub(/\$/,"").to_f }.sum
end

puts

p calculate_grocery_total("I purchased 4 apples for $9.99, 3 boxes of strawberries for $19.99, and one box of cereal for $5.49.") # 35.47