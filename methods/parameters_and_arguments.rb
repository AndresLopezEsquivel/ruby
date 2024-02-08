# A parameter is an excepted input
# A parameter expects an argument
# An argument is the concrete value
# is passed when the method is invoked

# A local variable is declared within
# a method body and is going to exists
# inside the method as long as the method is executing

# Scope is simply the boundaries of where
# a variable exists within the program

def say_hi_to(name = "there")
    puts "Hi #{name}"
end

def talk_to(name, age)
    puts "Hello, #{name}. In 5 years you will be #{age + 5}"
end

def sum(num_1, num_2)
    return num_1 + num_2
end

# By default, when Ruby is processing the code of a method,
# it is going to look at the last line and it is going to
# return it implicitly, even if we don't include the return
# method explicitly

def sum_2(num_1, num_2)
    num_1 + num_2
end

say_hi_to("Andrés")
say_hi_to
talk_to("Manny", 13)
puts "2 + 3 = #{sum(2, 3)}"
puts "6 + 7 = #{sum_2(6, 7)}"