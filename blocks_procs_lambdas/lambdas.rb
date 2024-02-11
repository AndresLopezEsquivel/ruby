def custom_map(array, &code)
    new_array = []
    for element in array
        new_array << code.call(element)
    end
    new_array
end

double_number = lambda { |number| number * 2}
triple_number = ->(number) { number * 3 }

p custom_map([1, 2, 3], &double_number) # [2, 4, 6]
p custom_map([4, 5, 6], &triple_number) # [12, 15, 18]

# Subtle differences between procs and lambdas

# 1) A lambda throws an error when it is passed the incorrect number of arguments
# 2) A proc ignores an extra number of arguments while assigning nil to the missing ones
# 3) When a lambda uses the return keyword, it transfers control to its calling method
# 4) When a proc uses the return keyword, it terminates all executions, even the ones of its calling method