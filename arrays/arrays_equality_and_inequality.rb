# Ruby considers two arrays equal
# if they have the same length and
# the same (exact) elements in the same order

array_1 = %w[A E I O U]
array_2 = %w[a e i o u]
array_3 = %W[A E I O u]
array_4 = %w[a e i o u]

p "array_1 = #{array_1}"
p "array_2 = #{array_2}"
p "array_3 = #{array_3}"
p "array_4 = #{array_4}"

puts array_1 == array_3 # false
puts array_2 == array_4 # true
puts array_1 != array_3 # true
puts array_2 != array_4 # false