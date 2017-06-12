
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("medicine_tracker.db")

# create each table: user, user_medication and meication

# create user if it is not already made
user = <<-SQL
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

medication = <<-SQL
  CREATE TABLE IF NOT EXISTS medication(
    id INTEGER PRIMARY KEY,
    med_name VARCHAR(255)
  )
SQL


#select user id that you would like to add to 


def add_user(db)
  puts 'Please enter your name: '
  name = gets.chomp
db.execute("INSERT INTO user (name) VALUES (?)", [name])

puts " Welcome #{name}. "
end

#def add_user(db, name)
#  db.execute("INSERT INTO user (name) VALUES (?)", [name])
#end

def add_medication(db, med_name)
 db.execute("INSERT INTO medication (med_name) VALUES (?)", [med_name])
end


# run the table creation
db.execute(user)
db.execute(user_medication)
db.execute(medication)
add_user(db)
add_medication(db, "prescript")



#exit_manager = false

#until exit_manager do 
  #puts "What would you like to do: "


#if user_input == "exit"
  #exit_manager = true
 # end 
#end 

  #if id == 1
  #  id += 1
  #else id == 1
  #end 

# db.execute("SELECT id FROM user WHERE name = (name)")
