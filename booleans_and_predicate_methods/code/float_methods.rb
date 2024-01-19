puts "== Float methods =="
# floor rounds down to the closest integer
puts "9.8.floor = #{9.8.floor}" # Same as 9.8.floor()
puts "9.8.floor.class = #{9.8.floor.class}" # Same as 9.8.floor().class()
# ceil rounds up to the closest integer
puts "4.1.ceil = #{4.1.ceil}" # Same as 4.1.floor()
puts "4.1.ceil.class = #{4.1.floor.class}" # Same as 4.1.floor().class()
# round with no arguments
puts "3.2.round = #{3.2.round}"
puts "3.5.round = #{3.5.round}"
puts "3.8.round = #{3.8.round}"
# round with arguments, which indicate the number of decimals
puts "3.245.round(2) = #{3.245.round(2)}"
puts "3.51238.round(4) = #{3.51238.round(4)}"