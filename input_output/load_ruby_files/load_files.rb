# load: loads a file every time 'load' is called
# require: loads a file only once even if 'require' is called several times
# However, 'require' looks firstly at the Ruby installation,
# so you have to specify the path of your Ruby file to avoid errors
# require_relative: same as 'require' but it looks for in the current directory

# load "./test.rb"
# require "./test" # <- not the same as require "test"
# require "./test.rb" # <- not the same as require "test.rb"
# require_relative "test" # <- same as require "./test"
# require_relative "test.rb" # <- require "./test.rb"

require_relative "test"

operations = Operations.new(a: 10, b: 50)
p operations.sum # 60