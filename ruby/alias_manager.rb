#CREATE A FAKE NAME


#Create a method to search for which letter next needs to be changed

def find_next_letter( current_letter, letter_selection )
  current_letter_index = letter_selection.index( current_letter )
  next_letter_index = current_letter_index + 1

  if next_letter_index > letter_selection.length - 1
     next_letter = letter_selection[ 0 ]
  else
    next_letter = letter_selection[ next_letter_index ]
  end

  return next_letter
end

def generate_alias( agent_name )
  swapped_name = name_swap( agent_name )
  shifted_name = shift_name( swapped_name )

  return shifted_name
end

# making a method to sap the first and last names

def name_swap( full_name )
  name_array = full_name.split( ' ' ) 
  first_name = name_array.shift()
  
  name_array.push( first_name )
  
  swapped_names = name_array.join( ' ' )
  
  return swapped_names
end

#making a mthod to change the letters vowels or consonats

def shift_letters( word )
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnpqrstvwxyz'
  shiffted_word = ""

  word.split( '' ).each do | letter |
    if vowels.include?( letter )
      shiffted_word << find_next_letter( letter, vowels )
    else
      shiffted_word << find_next_letter( letter, consonants )  
    end  
  end

  return shiffted_word
end


def shift_name( full_name )
  split_name = full_name.split( ' ' )

  split_name.map! do | name |
    shift_letters( name )
  end

  shiffted_name = split_name.join( ' ' )

  return shiffted_name
end

#create a method that will capitalize the names of the agents

def format_name( full_name )
  split_name = full_name.split( ' ' )

  split_name.map! { | name | name.capitalize }

  formatted_name = split_name.join( ' ' )

  return formatted_name
end

# hash to store the names and aliases and a loop to ask for the agents name until exited

agents = {}
exit_manager = false

until exit_manager do 
  print "Enter an agent's name: "
  user_input = gets.chomp.downcase

  agents.store( user_input, generate_alias( user_input ) )

  puts
  print "Enter another agent into the manager? (Yes/ No): "
  user_input = gets.chomp.downcase
  puts

  if user_input ==  'no'
    exit_manager = true
  end
end

agents.each do | real_name, agent_alias |
  puts "#{ format_name( agent_alias ) } is actually #{ format_name( real_name ) }"
end


# TESTS
# agent_name = "blake july"
# print "it swaps first last name: ", name_swap(agent_name) == "july blake"
# puts 
# print "it swaps first last name: ", name_swap("silver millver") == "millver silver"

# agent_name = "blake july"
# swapped_name = name_swap(agent_name)
# print "it swaps first last name: ", swapped_name == "july blake"
# puts
# print "it returns alias name: ", shift_name( swapped_name ) == "kamz cmeli"
# puts

# agent_name = "blake july"
# print "it returns agent's alias: ", generate_alias( agent_name ) == "kamz cmeli"
