puts "How many employees are going to be processed? "
  employees = gets.chomp.to_i
until employees <= 0
# Getting user info to run through the program.
puts "What is your name?"
  name = gets.chomp.downcase

# Ask for the current age and ask for the year born to compare so that Vampires can't lie their way in.

puts "How old are you??"
  age = gets.chomp.to_i

puts "What year were you born?"
  year_born = gets.chomp.to_i

life_age = year_born + age

# Using if/elsif/else statment and || to compare age and make sure it is true so that Vampires cannot lie about their age.

if life_age == 2016 || life_age == 2017
  life_age = true
  else life_age = false
end 
    
garlic_bread = nil

# Using an until loop in the next two questions to get the correct information fromthe user


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


# If/elsif/else statment and conditional oporators being used to check whether the conditions are true or not so that the Vampires are weeded out.

if name == "Drake Cula".downcase || name == "Tu Fang".downcase
    result = "Definitely a Vampire."
  elsif life_age != true && (garlic_bread != true && insurance != true)
    result = "Almost certainly a Vampire."
  elsif life_age == false && (garlic_bread == false || insurance == false)
    result = "Probably a Vampire."
  elsif life_age == true && (garlic_bread == true || insurance == true)
    result = "Probably not a Vampire."
  else
    result = "Results inconclusive."
end

# Alergy loop to cancel if the user lists sunshine or enters done
 puts " One at a time enter your allergies: "

allergies = []

  while true
    allergy = gets.chomp.downcase

    if allergy == "sunshine"
      result = "Probably a vampire."
        break

    elsif allergy == "done"
      break
    
    else
      allergies.push(allergy)
    end 
  end 
puts result
employees -= 1 
end
print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
