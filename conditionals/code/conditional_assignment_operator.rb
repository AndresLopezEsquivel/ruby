# The conditional assignment operator will only
# assign a value to a variable based on a condition/criteria.
# If a variable's value is nill, it assigns a new value to that variable

# Check: https://stackoverflow.com/questions/995593/what-does-or-equals-mean-in-ruby

value = nil
p value # prints nil

value ||= 6
p value # Because value was nil, it assigns the new value of 6

value ||= 7
p value # Because value != nil, it doesn't do the assignment