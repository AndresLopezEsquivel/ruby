# Truthy values: values that are true in a boolean context
# Falsy values: values that are false in a boolean context
# In Ruby, there are two falsy values: false and nil,
# everything else is truthy

falsy = nil

if falsy
    puts "nil is not a falsy value" # this will never be executed
else
    puts "nil is a falsy value"
end