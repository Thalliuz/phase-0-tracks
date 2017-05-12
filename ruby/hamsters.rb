puts "What is the Hamsters name?"
hamster_name = gets.chomp

puts "On a scale from 1-10 how loud is the hamster (one being the lowest)? "
hamster_volume = gets.chomp.to_i

puts "What color fur does the hamster have? "
fur_color = gets.chomp

puts "Is the hamster good for adoption (yes/no)? "
adoption_fit = gets.chomp

puts "How old is the hamster?"
age = gets.chomp

if age == ""
  age = nil
else
  age = age.to_i
end 
puts "Hamster's Name: #{hamster_name}"
puts "Hamster Volume: #{hamster_volume}"
puts "Hamster's Fur Color: #{fur_color}"
puts "Hamster Adoption Fit: #{adoption_fit}"
puts "Hamster's Age: #{age}"
