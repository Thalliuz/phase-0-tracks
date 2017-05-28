# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # pull each item from the string to convert into keys for the hash
  # set default quantity of each item 
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] we would want a hash

#GROCERY LIST


def grocery_list(items)
  #items string into an array
  #create hash named LIST 
  #LIST << items[0]
  #LIST[:carrots] = 2

  item_array = items.split(" ")
  food_list = {}
  

  item_array.each do |fooditem|
    food_list[fooditem] = 2
  end

  food_list
  # p food_list

end

master_list = grocery_list("Carrots Bananas") 




# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: use list variable and put item into the list then entering quantity if needed 
# output: how many items are in the list

def add_item(list, item, quantity)

  list[item] = quantity
  list

end

master_list = add_item(master_list, "Lemonade", 2)
master_list = add_item(master_list, "Tomatoes", 3)
master_list = add_item(master_list, "Onions", 1)
master_list = add_item(master_list, "Ice Cream", 4)

# Method to remove an item from the list
# input: list and item name
# steps: use list variable and delete item from list
# output: how many items are in the list

def delete_item(list, item)
  list.delete(item)
  list
end

master_list = delete_item(master_list, "Lemonade")

# Method to update the quantity of an item
# input: list, item name, and new quantity
# steps: use list variable and call item name to change value of item name
# output: print item name and new value - return

def update_item(list, item, new_quantity)
  list[item] = new_quantity
  list
end

master_list = update_item(master_list, "Ice Cream", 1)


# Method to print a list and make it look pretty
# input: list
# steps: loop through the list and print out each item and its value as a nice string
# output: list, prettified

def prettify_list(list)
  list.each do |item, quantity|
    p "You have #{quantity} #{item}"
  end
end

prettify_list(master_list)

