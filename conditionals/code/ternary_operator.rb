# The question mark (?) and the colon (:) cannot
# exist by themselves. So, the ternary operator
# cannot be used for just a 'if' statement, it
# needs to be used for an 'if-else' statement

eval_1 = 5.between?(1,6) ? "It is between 1 and 6" : "It is not between 1 and 6"
eval_2 = "Andrew".upcase == "ANDREW" ? "Equivalent" : "Not equivalent"
eval_3 = "Isabel".downcase == "ISABEL" ? "Equivalent" : "Not equivalent"

puts eval_1
puts eval_2
puts eval_3