# +, -, * and / are methods,
# so we can use them using the
# dot notation and we can
# indicate their arguments using
# parentheses. If we do not use
# the dot notation, we are using
# their syntactic shortcuts (+, -, *, /)

puts "1 + 2 = #{1.+(2)}" # same as 1 + 2
puts "4 - 3 = #{4.-(3)}" # same as 4 - 3
puts "6 * 2 = #{6.*(2)}" # same as 6 * 2
puts "15 / 3 = #{15./(3)}" # same as 15 / 3
# In Ruby there are many ways to accomplish the same thing
puts "15 / 3 = #{15.div(3)}" # same as 15 / 3