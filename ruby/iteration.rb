# Release 0

#def baby_sloths (baby_1 = "Vanilla", baby_2 = "Noah")
#  puts "The two new baby sloths are: "
#  yield(baby_1, baby_2)
#  puts "They are healthy and happy! (SUPER CUTE TOO!) "
#end 
#baby_sloths {|baby_1,baby_2| puts baby_1, baby_2 }


# Release 1

villians = ["Octo-guy", "Badman-01", "Furtious-Office-Supplier", "Random-Villager"]
villians_status = []
villians_status_2 = []
super_heros = {"Batman": "Bruce" , "Spiderman": "Petter", "Wolverine": "Logan"}

# Printing the Original data

puts "Original data: "
p villians
p super_heros 

# Itterating through array using .each

puts " ARRAY DOT EACH ITTERATION"

villians.each do |status|
  villians_status << "jailed!"
end

puts "MAP ARRAY ITTERATION"

villians.map do |status|
  villians_status_2 << "jailed TWICE!"
end

puts "MAP BANG ARRAY ITTERATION"

villians.map! do |status|
  status = "jailed THRICE!!!"
end

p villians_status
p villians_status_2
p villians


puts "HASH DOT EACH ITTERATION"

super_heros.each do |superhero, secretid|
  secretid = "classified"
  p "#{superhero} is #{secretid}"
end 

puts "HASH MAP ITTERATION"

super_heros.map do |superhero, secretid|
  secretid = "??????"
  super_heros[superhero] = secretid
end
print super_heros


# delete_if on an array and hash

number = [100,90,80,70,60,50,40,30,20,10]

number.delete_if { |num| num > 50 } 

print number

animals = {"dog" => 6, "cat" => 4, "sloth" => 800}

animals.delete_if { |name, amount| name != "sloth" }

puts animals 

puts "---------------------------------------------"

# keep_if on an array and hash

number.keep_if { |num| num == 50}

print number

animals.keep_if { |name, amount| amount >= 100}

print animals

puts "-------------------------------------------"


number = [100,90,80,70,60,50,40,30,20,10]

number.select! { |num| num < 50 }

print number


animals = {"dog" => 6, "cat" => 4, "sloth" => 800}

animals.select! {|name, amount| name != "sloth"}

puts animals


puts "-------------------------------------------"


number = [100,90,80,70,60,50,40,30,20,10]

 
print number.reverse.drop_while { |num| num < 70}


animals = {"dog" => 6, "cat" => 4, "sloth" => 800}

animals.each do |name, value|

  if name != "sloth"
    animals.delete(name) 
  end 
end 

p animals
