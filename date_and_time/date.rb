# The date class must be imported
require "date" # Same as: require "date.rb"

# The instances of the Date class don't represent time, only date
some_date = Date.new(2000, 5, 16) # year, month, day

p some_date.class # Date
p some_date # #<Date: 2000-05-16 ((2451681j,0s,0n),+0s,2299161j)>
p some_date.year # 2000
p some_date.month # 5
p some_date.day # 16
p some_date.monday? # false
p some_date.tuesday? # true
p some_date.wednesday? # false
p some_date.thursday? # false
p some_date.friday? # false
p some_date.saturday? # false
p some_date.sunday? # false
