# Friendly remainder: The last line of logic
# that Ruby evaluates within a method is going
# to be the implicit returned value
# Check Section 8: Conditionals, of the 
# course 'Learn to Code with Ruby' by Boris Paskhaver

def evaluate(n)
    if n > 0
        "#{n} is positive"
    elsif n < 0
        "#{n} is negative"
    else
        "#{n} is zero"
    end
end

puts evaluate 1
puts evaluate 0
puts evaluate -1