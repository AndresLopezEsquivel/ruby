puts "== Methods with multiple arguments =="
lower_bound = 10
upper_bound = 50
# The between?(lower_bound, upper_bound) method is inclusive
# for both lower_bound and upper_bound
puts "10 is between #{lower_bound} "\
      "and #{upper_bound}: #{10.between?(lower_bound, upper_bound)}"
puts "50 is between #{lower_bound} "\
      "and #{upper_bound}: #{50.between?(lower_bound, upper_bound)}"
puts "40 is between #{lower_bound} "\
      "and #{upper_bound}: #{40.between?(lower_bound, upper_bound)}"
puts "5 is between #{lower_bound} "\
      "and #{upper_bound}: #{5.between?(lower_bound, upper_bound)}"
puts "55 is between #{lower_bound} "\
      "and #{upper_bound}: #{55.between?(lower_bound, upper_bound)}"