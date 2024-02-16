# Reading

file_path = "./content.txt"

file = File.open(file_path)

file.each { |line|
    p line
}

# "Line1\n"
# "Line2\n"
# "Line3\n"

# Writing

# w : write (override)
# a : append (don't override)

# puts: writes and include line break
# write: writes and doesn't include line break

File.open(file_path, "a") do |file|
    file.puts("Line")
    file.puts("Line")
    file.write("Line")
    file.write("Line")
end

# In the file:
# Line1
# Line2
# Line3
# Line
# Line
# LineLine