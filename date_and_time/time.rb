# The Time class is automatically imported
# Its deprecated version is the DateTime class

t = Time.new(2000, 5, 16, 23, 50, 10) # year, month, day, hour, minutes, seconds

p t.class # Time
p t # 2000-05-16 23:50:10 -0500 <- The last element represents hours w.r.t. GMT

puts

p t.year # 2000
p t.month # 5
p t.day # 16
p t.hour # 23
p t.min # 50
p t.sec # 10

puts

p t.mday # 16 <- day of the month
p t.yday # 137 <- day of the year
p t.wday # 2 <- day of the week ( 0: Sunday, 1: Monday, ...)

puts 

p t.monday? # false
p t.tuesday? # true
p t.wednesday? # false
p t.thursday? # false
p t.friday? # false
p t.saturday? # false
p t.sunday? # false

# Adding and subtracting time
# We add and subtract in intervals of 60 seconds

t0 = Time.new(2024)

puts

p t0 # 2024-01-01 00:00:00 -0600
p t0 + 60 # 2024-01-01 00:01:00 -0600 <- Adds 60 seconds
p t0 + (60 * 60) # 2024-01-01 01:00:00 -0600 <- Adds 1 hour
p t0 + (60 * 60 * 24) # 2024-01-02 00:00:00 -0600 <- Adds 1 day

puts

p t0 - 60 # 2023-12-31 23:59:00 -0600 <- Subtracts 60 seconds
p t0 - (60 * 60) # 2023-12-31 23:00:00 -0600 <- Subtracts 1 hour
p t0 - (60 * 60 * 24) # 2023-12-31 00:00:00 -0600 <- Subtracts 1 day

# Comparison between datetimes
# The class Time uses the module Comparable

t1 = Time.new(2024, 2, 1, 10, 10, 10)
t2 = Time.new(2024, 2, 1, 10, 10, 10)
t3 = Time.new(2024, 3, 15, 20, 10, 40)
t4 = Time.new(2024, 6, 20, 15, 45, 30)

puts

p t1 # 2024-02-01 10:10:10 -0600
p t2 # 2024-02-01 10:10:10 -0600
p t3 # 2024-03-15 20:10:40 -0600
p t4 # 2024-06-20 15:45:30 -0600

puts

p t1 == t2 # true
p t3.between? t2, t4 # true
p t3 < t4 # true
p t1 > t3 # false

# Format as a string
# Check: https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html#method-i-strftime

puts

p t.strftime("%e %B %Y") # "16 May 2000"

# Create a Time object from a string
# Check: https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html#method-c-strptime
# Here, we show the strptime class method, but I also recommend to check the parse class method

require "time" # strptime is additional functionality of the Time class that needs to be imported

puts 

p Time.strptime("2001-02-03", "%Y-%m-%d") # 2001-02-03 00:00:00 -0600

# Exercise
# Define an add_thirty_days method that accepts an array.
# The array will consist of strings representing a date.
# The dates will be in MM**DD**YYYY format (i.e. 12**02**2023).
# Add 30 days to each date.
# Return an array of strings with the new date in the
# same MM**DD**YYYY format.
#
# Examples:
# The => indicates the expected return value
#
# add_thirty_days(["05**28**2023", "09**12**1991", "02**08**2002"])
#  => ["06**27**2023", "10**12**1991", "03**10**2002"]
# add_thirty_days(["01**01**2023", "03**01**2025", "05**01**2027"])
#  => ["01**31**2023", "03**31**2025", "05**31**2027"]

def add_thirty_days(dates)
    dates.map do |date|
        # Remember to import "time" in order to use strptime
        new_time = Time.strptime(date, "%m**%d**%Y") + (60 * 60 * 24 * 30)
        new_time.strftime("%m**%d**%Y")
    end
end

puts
p add_thirty_days(["05**28**2023", "09**12**1991", "02**08**2002"]) # ["06**27**2023", "10**12**1991", "03**10**2002"]
p add_thirty_days(["01**01**2023", "03**01**2025", "05**01**2027"]) # ["01**31**2023", "03**31**2025", "05**31**2027"]