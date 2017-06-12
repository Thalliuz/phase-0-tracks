
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("medicine_tracker.db")

# create each table: user_table, user_medication and meication

# create user_table if it is not already made
user_table = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

# create user_medication table if it is not already made
user_medication = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY,
    user_id INT,
    medication_id INT,
  )
SQL

# create medication table if it is not already made
medication = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY,
    med_name VARCHAR(255),
  )
SQL

# run the table creation
db.execute(user_table)
db.execute(user_medication)
db.execute(medication)


def add_user(db, name)
  db.execute("INSERT INTO user_table (name) VALUES (?)", [name])
end

def add_medication(db, med_name)
  db.execute('INSERT INTO user_table (med_name)', [med_name])




