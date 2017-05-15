puts "What is your name?"
name = gets.chomp.downcase

puts "How old are you??"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

life_age = year_born + age

if life_age == 2016 || life_age == 2017
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

insurance = nil

until insurance == true ||insurance == false 
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



if name == "Drake Cula".downcase || @name == "Tu Fang".downcase
    puts "Definitely a Vampire."
  elsif life_age == false && (garlic_bread == false && insurance == false)
    puts "Almost certainly a Vampire."
  elsif life_age == false && (garlic_bread == false || insurance == false)
    puts "Probably a Vampire."
  elsif life_age == true && (garlic_bread == true || insurance == true)
    puts "Probably not a Vampire."
  else
    puts "Results inconclusive."
  end 


    










