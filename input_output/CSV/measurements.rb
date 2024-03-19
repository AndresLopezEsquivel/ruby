require "csv" # Check https://ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html

filepath = "measurements.csv"

# Check the take function: https://ruby-doc.org/3.1.2/Enumerable.html#method-i-take
# To take only 5 rows
# CSV.foreach(filepath).take(5).each { |row| p row }

CSV.foreach(filepath) do |row|
  p "#{row[0]}: (#{row[1]}, #{(row[2])})" # e.g. "6.5001249313354: (0.97, 0.29)"
end

puts

CSV.foreach(filepath, headers: :first_row) do |row|
  p "#{row["time"]}: (#{row["x_pos"]}, #{(row["y_pos"])})" # e.g. "6.5001249313354: (0.97, 0.29)"
end

# Write to file
# wb -> write binary
# ab -> append binary
filepath = "new_csv.csv"

CSV.open(filepath, "ab") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Paul", "McCartney", "Bass Guitar"]
  # ...
end
