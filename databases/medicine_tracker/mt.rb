
require 'sqlite3'

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
  CREATE TABLE IF NOT EXISTS user_medication(
    id INTEGER PRIMARY KEY,
    user_id INT,
    medication_id INT
  )
SQL

medication_t = <<-SQL
  CREATE TABLE IF NOT EXISTS medication(
    id INTEGER PRIMARY KEY,
    medication VARCHAR(255)
  )
SQL


# run the table creation
db.execute(user_table)
db.execute(user_medication)
db.execute(medication_t)


def add_user(db, name)
  db.execute("INSERT INTO user (name) VALUES (?)", [name])
end
add_user(db, "sally")

def add_medication(db, med_name)
  db.execute("INSERT INTO medication_t (med_name) (?)", [med_name])
end
add_medication(db, "prescript")






#exit_manager = false

#until exit_manager do 
  #puts "What would you like to do: "


#if user_input == "exit"
  #exit_manager = true
 # end 
#end 
