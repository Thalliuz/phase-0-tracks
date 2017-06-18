
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


# create check_user method to see if user data has been created
def check_user(db)
 value = db.execute("SELECT id FROM user")[0]
  if value == nil
    puts "No users detected. Follow the next instructions =D"
    add_user(db)
    
  else 
    puts "Enter your user_id number: "
    user_id = gets.to_i 
    name = db.execute("SELECT name FROM user WHERE id == #{user_id}" )[0][0]
    puts "#{name}"
end 
end 

def add_user(db)
  puts 'Please enter your name: '
  name = gets.chomp
db.execute("INSERT INTO user (name) VALUES (?)", [name])
id = db.execute("SELECT id FROM user WHERE name = (?) ", [name])[0][0]

puts " Welcome! Your user_id is #{id} and your name is #{name}. "
end

def add_medication(db)
puts "Please enter the medication that you would like to add: "
med_name = gets.chomp 
db.execute("INSERT INTO medication (med_name) VALUES (?)", [med_name])
puts "You added #{med_name} to your medications."
end 


# run the table creation and methods
db.execute(user)
db.execute(user_medication)
db.execute(medication)
check_user(db)
#add_user(db)
add_medication(db)














# Building Proccess 
#def add_user(db, name)
#  db.execute("INSERT INTO user (name) VALUES (?)", [name])
#end

#def add_medication(db, med_name)
# db.execute("INSERT INTO medication (med_name) VALUES (?)", [#med_name])
#end

#EXTRA CODE I DIDN'T NEED
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
#
