# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

# Solution with join iterator:
zombie_apocalypse_supplies.join( '*' )

# # Solution with each_with_index iterator
# supplies_string = ""

# zombie_apocalypse_supplies.each_with_index do | supply_item, index  |
#   if index == zombie_apocalypse_supplies.length - 1
#     supplies_string << supply_item
#   else
#     supplies_string << supply_item + '*'
#   end
# end

# supplies_string.slice( 0, supplies_string.length - 1 )

# # Solution with each iterator
# supplies_string = ""

# zombie_apocalypse_supplies.each do | supply_item |
#   supplies_string << supply_item + '*'
# end

# supplies_string.slice( 0, supplies_string.length - 1 )

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def bubble_sort( supplies )
  number_of_supplies = supplies.length

  loop do
    swapped = false

     ( number_of_supplies - 1 ).times do | index |
      if supplies[ index ].downcase > supplies[ index + 1].downcase
        supplies[ index ], supplies[ index + 1 ] = supplies[ index + 1 ], supplies[ index ]
        swapped = true
      end
    end

    break if swapped == false
  end

  return supplies
end

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def includes_supply?( supply, supplies )
  current_index = 0

  while current_index < supplies.length do
    if supplies[ current_index ] == supply
      return true
    end

    current_index += 1
  end

  return false
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def quickly_pack( supplies )
  current_index = 0
  pack = []

  while current_index < 5 do
    pack << supplies[ current_index ]

    current_index += 1
  end

  return pack
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

def combine_supplies( supply_set_one, supply_set_two)
  supplies = supply_set_one

  supplies.concat( supply_set_two )

  supplies.uniq!

  return supplies
end

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |key, value|
  print "#{ key }-#{ value } \n*"
  puts
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

def extinct_before_y2k( animals,  )
  kept_animals = {}

  animals.each do | animal, extinction_year |
    if extinction_year >= 2000
      kept_animals[ animal ] = extinction_year
    end
  end

  return kept_animals
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

def update_year( animals, years )
  updated_animals = {}

  animals.each do | animal, extinction_year |
    updated_animals[ animal ] = extinction_year + years
  end

  return updated_animals
end

update_year( extinct_animals, -3 )

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def is_extinct?( animal_to_find, animals )
  animals.each do | animal, _value |

    if animal == animal_to_find
      return true
    end
  end

  return false
end

def is_extinct?( animal_to_find, animals )
  animals.each do | animal |

    if animal[0] == animal_to_find
      return true
    end
  end

  return false
end

def is_extinct( animal, animals )
  !!animals[ animal_to_find ]
end

is_extinct?( "Andean Cat", extinct_animals )
is_extinct?( "Dodo", extinct_animals )
is_extinct?( "Saiga Antelope", extinct_animals )

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

def remove_animal( animal, animals)
  remaning_animals.delete( animal )

  return animals
end

remove_animal( "Passenger Pigeon", extinct_animals)
