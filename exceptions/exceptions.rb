# What I write here is based on what is explained at
# https://ruby-doc.com/docs/ProgrammingRuby/html/tut_exceptions.html

# Errors detected during execution are called exceptions

def sum(a:,b:)

    # The code that could raise an exception
    # is enclosed in a begin/end block.

    # The rescue keyword is used to tell Ruby
    # the types of exceptions we want to handle.

    # There can be multiple rescue clauses
    # in a begin/end block, and each rescue clause
    # can specify multiple exceptions to catch.
    # At the end of each rescue clause, a local
    # variable can be given to receive the
    # matched exception.

    # Although the parameters to the rescue clause
    # are typically the names of classes, they can
    # actually be arbitrary expressions that return
    # an exception class

    begin
        sum = a + b
    rescue TypeError => e
        # p e.class
        # p e.message
        a = a.to_f
        b = b.to_f
        # When you are able to correct the cause
        # of an exception, you can use the retry
        # keyword to repeat the entire begin/end block
        retry
    rescue NoMethodError => e
        # p e.class
        # p e.message
        a = 0
        b = 0
        retry
    rescue => e # Matches any other exception
        # If the rescue clause has no parameter list,
        # the parameter list defaults to StandardError
        p e.class
        p e.message
    else
        # The else clause is a similar to the ensure clause
        # If present, it goes after the rescue clauses and before any ensure
        # The body of an else clause is executed only if no exceptions are raised by the main body of code.

        # ...
    ensure
        # The code inside an ensure clause
        # runs regardless of whether an
        # exception was raised

        # ensure goes after the last rescue clause
        # and contains a chunk of code that will
        # always be executed as the block terminates

        # ...
    end
    sum
end

p sum(a: "1", b: 2) # 3 (TypeError handled)
puts
p sum(a: 1, b: "2") # 3 (TypeError handled)
puts
p sum(a: nil, b: 2) # 0 (NoMethodError handled)

# Another way to handle exceptions without
# writing the begin keyword is as follows

def subtract(a:, b:)
    a - b
# Check there is no indentation
rescue TypeError
    a = a.to_f
    b = b.to_f
    retry
rescue NoMethodError
    a = 0
    b = 0
    retry
end

puts
p subtract(a: 5, b: "1") # 4.0 (TypeError)
puts
p subtract(a: "5", b: 1) # 0 (NoMethodError)

# You can raise your own exceptions

puts

name = nil

begin
    # If no exception class if specified
    # raise raises a RuntimeError exception
    raise "Missing name" if name.nil?
rescue => e
    p e.class # RuntimeError
    p e.message # "Missing name"
end

puts

i = 2
n = [1, 2]

begin
    raise IndexError, "Index out of bounds" if i >= n.length
rescue => e
    p e.class # IndexError
    p e.message # "Index out of bounds"
end

# You can create your own exception classes
# In this example, the class CustomError inherits
# from StandardError

puts

class CustomError < StandardError
end

begin
    raise CustomError, "Example of a custom exception"
rescue CustomError => e
    p e.class # CustomError
    p e.message # "Example of a custom exception"
end
