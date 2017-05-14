puts "What is your name?"
name = gets.chomp.capitalize

puts "How old are you??"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

life_age = year_born + age

if life_age == 2016
  life_age = true
else life_age = false
end 
    



garlic_bread = nil

until garlic_bread == true || garlic_bread == false
  puts "Our company cafeteria serves garlic bread. Should we order some for you (yes/no)?"
  garlic_bread = gets.chomp.downcase
  if garlic_bread == "yes"
    garlic_bread = true
  elsif garlic_bread == "no"
    garlic_bread = false
  else
    puts "Invalid answer #{garlic_bread}"
  end 
end

until insurance == true || false 
puts "Would you like to enroll in the company’s health insurance? (yes/no?)"
  insurance = gets.chomp.downcase
if insurance == "yes"
  insurance = true
elsif insurance == "no"
  insurance = false
else 
    puts "Invalid answer #{insurance}"
  end 
end

    



















