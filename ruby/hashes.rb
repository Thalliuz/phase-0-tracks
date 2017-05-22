#get the user info 
#keep contact info in the hash
#promp the user on what they are doing 

customer_info = {}

puts "What is your name?"
customer_info[:name] = gets.chomp

puts "What is your age?"
customer_info[:age] = gets.chomp.to_i

puts "How many children do you have?"
customer_info[:children] = gets.chomp.to_i



customer_info.each do |key, value|
  puts "#{key}: #{value}"
end



puts "does any of your info need to be changed? y/n)"
answer = gets.chomp

if answer == "n"
  puts "Complete!"

elsif answer == "y"
  puts "What would you like to change?"
  customer_info[answer] = gets.chomp



  customer_info.each do | key, value |
    puts "#{key}: #{value}"
  end
end
