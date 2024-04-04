# b is not a copy of a
# both a and b are pointing to the same object
a = [1, 2, 3]
b = a
# To check the unique identifier of an object
# use the object_id method
puts "a.object_id = #{a.object_id}"
puts "b.object_id = #{b.object_id}" # == a.object_id
# To create a copy of an object,
# use either the dup method or the clone method
# However, there is a difference between both methods
# that we will check later in this file
c = a.dup
d = a.clone
puts "c.object_id = #{c.object_id}" # != a.object_id
puts "d.object_id = #{d.object_id}" # != a.object_id
# If you want an object to be immutable,
# use the freeze method
c = c.freeze
d = d.freeze
# When you copy a frozen object using
# the dup method, you'll get a non-frozen copy.
# So, as you imagine, the clone method
# produces a frozen copy when applied to
# a frozen object
c2 = c.dup
c2 << 4 # c2 = [1, 2, 3, 4]
d2 = d.clone
# d2 << 4 # can't modify frozen Array: [1, 2, 3] (FrozenError)

# So, after having understood that, naturally,
# Ruby doesn't create copies but rather
# it creates references to the same object,
# we can use methods to mutate an object

def add_n(object, n)
    object.push(n)
end

numbers = (1..4).to_a
puts "Before using add_n: "
p numbers # [1, 2, 3, 4]
add_n(numbers, 5)
puts "After using add_n: "
p numbers # [1, 2, 3, 4, 5]
