# The inject and reduce methods accomplish the same task
# Both methods are used to calculate a new OBJECT
# based on the elements of an array
# Maybe, we are looking for a transformation
# like Array -> Integer or Array -> Hash

# curr_obj is the current state of the object being calculated
# curr_ele is the current element of the array
# block_cal is the new state of the object being calculated inside the block
# init_curr_obj is the initial state of the object being calculated
# array.reduce(init_curr_obj) { |curr_obj, curr_ele| block_cal} 

# Lets calculate the sum of all the numbers of an element
# Here, the calculated object is a Integer
numbers = (1..5).to_a
sum = numbers.reduce { |curr_sum, curr_num| curr_sum + curr_num}
p numbers # [1, 2, 3, 4, 5]
puts "sum = #{sum}" # sum = 15

# Lets now calculate how many times each element appears in a array
# Here, the calculated object is a hash
elements = ["a","c", "a", "b", "c", "d"]
count = elements.reduce({}) do |curr_count, curr_ele|
    if curr_count.has_key? curr_ele
        curr_count[curr_ele] += 1
    else
        curr_count.store(curr_ele, 1)
    end
    # Remember to return the new state of the object being calculated
    # so the next iteration can use it
    curr_count
end

puts
p elements # ["a", "c", "a", "b", "c", "d"]
p count # {"a"=>2, "c"=>2, "b"=>1, "d"=>1}
