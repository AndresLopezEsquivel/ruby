require "debug"

# Commands:
# continue: move to the next breakpoint
# c: same as continue
# step: move to the next line of code
# s: same as step
# info: show the current value of all variables
# i: same as info
# q: quit

var_1 = "var_1"
puts "Hi, its #{var_1}"

debugger # sames as binding.break

var_1 = "no longer var_1"
var_2 = "var_2"
puts "Hi, its #{var_2}"

binding.break # same as debugger

var_1 = "no longer var_1"
var_2 = "no longer var_2"
var_3 = "var_3"
puts "Hi, its #{var_3}"

