# When using yield, Ruby transfers the control to the attached block
# yield can be used several times inside a method

def test
    puts "Start of the test method"
    yield # block will be executed
    puts "In the middle of the test method"
    yield # block will be executed
    puts "At the end of the test method"
end

test { puts "Inside the block"}

# The previous line produces:

# Start of the test method
# Inside the block
# In the middle of the test method
# Inside the block
# At the end of the test method

puts

test do
    puts "Inside the block"
end

# The previous line produces:

# Start of the test method
# Inside the block
# In the middle of the test method
# Inside the block
# At the end of the test method

# The block_given? method can be used
# to check whether a block was given or not

def who_am_i
    puts "So, who are you?"
    if block_given?
        name = yield
        puts "Oh, I see. Hello, #{name}"
    else
        puts "Mmm. Why are you not willing to tell me who you are?"
    end
end

# Do not use the return keyword inside a block
# because it will terminate the
# method's execution
# DO NOT DO THIS: who_am_i { return "Andrew" }

puts
who_am_i
# The previous line produces:
# So, who are you?
# Mmm. Why are you not willing to tell me who you are?

puts
who_am_i { "Andrew" }
# The previous line produces:
# So, who are you?
# Oh, I see. Hello, Andrew

# puts
# who_am_i { gets.chomp }
# The previous line produces:
# So, who are you?
# Isa
# Oh, I see. Hello, Isa

# == Custom each method ==

def custom_each(array)
    for element in array
        yield(element)        
    end
end

puts
puts "Custom each method: "
custom_each([1, 2, 3]) { |number|
    p number
}

# Custom map method

def custom_map(array)
    new_array = []
    for element in array
        new_array << yield(element)
    end
    new_array
end

puts
puts "Custom map method"
p custom_map([1, 2, 3]) { |number| number * number} # [1, 4, 9]