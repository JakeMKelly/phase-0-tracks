# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: hash with items pointing at quantities
# steps: 
  # create an empty hash
  # SPLIT the words in the string on each space 
  # feed each word into the hash, setting its value to ... 1, as in {"potatoes" => 1}
  # print the list to the console [can you use one of your other methods here?]
  # WE WANT THIS METHOD TO RETURN OUR HASH

def list_builder(list)
  shopping_list = {}
  list.split(" ").each do |item|
  shopping_list[item] = 1    
  end
  shopping_list
end

# test = { a: 1, b: 2, c: 3 }

# test[:d] = 4

# p test

our_list = list_builder("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# output: new list
# steps: take existing list of items and add the new item to it.
# return the list
def add_item(which_list, item_to_add, quantity = 1)
  which_list[item_to_add] = quantity
  which_list
end


# p add_item(our_list, "bananas", 2)

# Method to remove an item from the list
# input: item to remove
# output: updated list
# steps: take the item to remove and delete it and its quantity from the hash
# return our new list

def remove_item(which_list, item_to_remove)
  which_list.delete(item_to_remove)
  which_list
end

# p remove_item(our_list, "carrots")

# Method to update the quantity of an item
# input: list, item, quantity
# steps: take the quantity of the item and update it 
# output:updated list

def update_item(which_list, item_to_update, quantity_to_update)
  which_list[item_to_update] = quantity_to_update
  which_list
end

# p update_item(our_list, "pizza", 50)

# Method to print a list and make it look pretty
# input: grocery list
# steps: take the grocery list has and print each item and quantity as puts statements
# output: pretty list in puts statements

def print_list(which_list)
  which_list.each do |item, quantity|
  puts "-" * 10
  puts "You need to get #{quantity} of #{item}."  
  puts "-" * 10
  end
end

print_list(our_list)


# USER INTERFACE
while true
  puts "What items do you want to add to your list?"
  items = gets.chomp
  
  if items == "quit"
    break
  end
  
  our_list = list_builder(items)
  
  puts "Awesome, here is your list"
  
  print_list(our_list)
  
  # CALL YOUR METHODS IN HERE 
end