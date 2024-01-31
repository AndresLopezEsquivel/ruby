names = []
# Check if the array is empty
puts "names is empty? R: #{names.empty?}" # true
names[0] = "name_1"
names[1] = "name_2"
puts "And now? R: #{names.empty?}" # false
# Remember, nil? is true if only the
# object to which it is applied is actually nil
puts "Is names nil? R: #{names.nil?}" # false
names = nil
puts "And now? R: #{names.nil?}" # true