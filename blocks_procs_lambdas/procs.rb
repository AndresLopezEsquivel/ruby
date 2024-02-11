# A proc is an object representation of a block
# This will allows us to reuse blocks

# There are different ways of creating a bloc

proc_1 = Proc.new { |number| number ** 2}

proc_2 = Proc.new do |number|
    number ** 3
end

proc_3 = proc { |number| number * 2 }

proc_4 = proc do |number|
    number + 1
end

# To use a proc as a block, we need to use &

numbers = (1..4).to_a

p numbers.map(&proc_1) # [1, 4, 9, 16]
p numbers.map(&proc_2) # [1, 8, 27, 64]
p numbers.map(&proc_3) # [2, 4, 6, 8]
p numbers.map(&proc_4) # [2, 3, 4, 5]

# Using procs as parameters

def custom_select(array, &procedure)
    new_array = []
    for element in array
        # Using the procedure
        if procedure.call(element)
            new_array << element
        end
    end
    new_array
end

puts
select_even_numbers = proc { |number| number.even? }
p custom_select([1,2,3,4,5,6], &select_even_numbers) # [2, 4, 6]
# Although the method needs a proc argument,
# a block can be provided. Internally, Ruby
# converts the block to a proc
p custom_select([1,2,3,4,5,6]) { |number| number.even? } # [2, 4, 6]

def custom_reject(array)
    new_array = []
    for element in array
        if !yield(element)
            new_array << element
        end
    end
    new_array
end

puts
reject_multiples_of_three = Proc.new { |number| number % 3 == 0 }
# Although there is not a proc parameter,
# one can be provided. Internally, Ruby
# converts the proc to a block
p custom_reject([1, 2, 3, 4, 5, 6], &reject_multiples_of_three) # [1, 2, 4, 5]
p custom_reject([1, 2, 3, 4, 5, 6]) { |number| number % 3 == 0 } # [1, 2, 4, 5] 