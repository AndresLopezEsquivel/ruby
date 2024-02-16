# For example, run: ruby ARGV.rb 1 2 3 4 5

sum = 0

ARGV.each do |i|
    p i
    sum += i.to_i
end

puts "sum = #{sum}"

# ruby ARGV.rb 1 2 3 4 5
# "1"
# "2"
# "3"
# "4"
# "5"
# sum = 15