# To know more about sqlite3, visit:
# https://rubygems.org/gems/sqlite3
# https://www.rubydoc.info/gems/sqlite3
# https://sqlite.org/cli.html
# https://datacarpentry.org/sql-socialsci/instructor/08-sqlite-command-line.html
# for rowid: https://www.sqlitetutorial.net/sqlite-primary-key/
# for rowid: https://www.sqlite.org/autoinc.html
require "sqlite3"

# Open a database
db = SQLite3::Database.new("employees.db")

db.execute("SELECT * FROM employees") { |row| p row }

# db.execute("INSERT INTO employees (username, password, role)
#             VALUES (?, ?, ?)",
#             ["chabe", "$2a$12$11NjdceCL5xjWhu/jpPG8.apOlU2yUctwUMDOBYbS5COCYddGoG/K", "rider"])

puts
db.execute("SELECT * FROM employees") { |row| p row }

puts
db.execute("select max(country_id) from employees") { |row| p row }
