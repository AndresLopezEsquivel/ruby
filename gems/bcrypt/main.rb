# To know more about the bcrypt gem, visit: https://rubygems.org/gems/bcrypt
require "bcrypt"

class User
  include BCrypt
  attr_reader :password

  def password=(new_password)
    @password = Password.create(new_password)
    p "New password: #{@password}"
    # p @password.class # BCrypt::Password
  end
end

def load_password(encrypted_pass)
  BCrypt::Password.new(encrypted_pass)
end

andrew = User.new
andrew.password = "andrew_password"
p andrew.password == "andrew_password" # true
p andrew.password == "hi" # false

puts
pass = load_password("$2a$12$11NjdceCL5xjWhu/jpPG8.apOlU2yUctwUMDOBYbS5COCYddGoG/K")
p pass # "$2a$12$11NjdceCL5xjWhu/jpPG8.apOlU2yUctwUMDOBYbS5COCYddGoG/K"
p pass == "andrew_password" # true
