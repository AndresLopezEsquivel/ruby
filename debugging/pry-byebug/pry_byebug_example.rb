require 'pry-byebug'

# To know more about passing by value or by reference
# check: https://stackoverflow.com/questions/1872110/is-ruby-pass-by-reference-or-by-value

# From: https://ruby-doc.org/3.1.2/String.html
# Some String methods modify self. Typically, a method whose name ends
# with ! modifies self and returns self; often a similarly named method
# (without the !) returns a new string. In general, if there exist both bang and
# non-bang version of method, the bang! mutates and the non-bang! does not.
# However, a method without a bang can also mutate, such as String#replace.

def mutate_string(str, new_text)
  str.replace(new_text)
end

str1 = "before being mutated"
str2 = str1

binding.pry

# p "str1 = #{str1}, str1.object_id = #{str1.object_id}" # "str1 = before being mutated, str1.object_id = 220"
# p "str2 = #{str2}, str2.object_id = #{str2.object_id}" # "str2 = before being mutated, str2.object_id = 220"

mutate_string(str1, "after being mutated")

binding.pry

# puts
# p "str1 = #{str1}, str1.object_id = #{str1.object_id}" # "str1 = after being mutated, str1.object_id = 220"
# p "str2 = #{str2}, str2.object_id = #{str2.object_id}" # "str2 = after being mutated, str2.object_id = 220"

mutate_string(str2, "after being mutated x2")

# puts
# p "str1 = #{str1}, str1.object_id = #{str1.object_id}" # "str1 = after being mutated x2, str1.object_id = 220"
# p "str2 = #{str2}, str2.object_id = #{str2.object_id}" # "str2 = after being mutated x2, str2.object_id = 220"
