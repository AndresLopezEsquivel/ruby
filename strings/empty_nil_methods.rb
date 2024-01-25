str = ""

p "str is empty: #{str.empty?}" # prints true
p "str is nil: #{str.nil?}" # prints false

str = nil

# p "str is empty: #{str.empty?}" # .empty? cannot be used with a nil object
p "str is nil: #{str.nil?}" # prints true