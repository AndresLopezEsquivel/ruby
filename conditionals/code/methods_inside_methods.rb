def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def mult(a, b)
    a * b
end

def divi(a, b)
    a / b
end

def calculator(a, b, operation)
    operation = operation.downcase
    if operation == "add"
        add(a, b)
    elsif operation == "subtract"
        subtract(a, b)
    elsif operation == "multiply"
        mult(a, b)
    elsif operation == "divide"
        divi(a, b)
    else
        puts "Invalid operation"
        nil
    end
end