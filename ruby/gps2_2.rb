# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a method to create a list that takes in a string of items as a parameter.
  # create an empty hash for the item and quantities to be passed into later.
  # convert string into an array
  # set default quantity of 1
  # map quantity of 1 to each item and then pass data into empty hash.
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a method that takes item and quantity as parameter and pass into hash from previous method.
# output: hash updated with the new item.

# Method to remove an item from the list
# input: list, item name.
# steps: create a method that takes item as parameter and removes it from the hash
# output: hash updated with th item removed

# Method to update the quantity of an item
# input: list, item name, and quantity.
# steps: create method that takes item and quantity as parameter and changes the quantity.
# output: hash updated with a new quantity for the item.

# Method to print a list and make it look pretty
# input: list
# steps: create method to print the hash, and add lines and banners to separate and make more readable.
# output: the previous hash updated with lines/banners and made more readable.

def create_list(list)
  groceries = {}
  array = list.split(" ")
  qty = 1
  array.each do |items|
    groceries[items] = qty
  end
  return groceries
end

# puts create_list("carrots apples cereal pizza")

grocery_list = create_list("carrots apples cereal pizza")

def add_item(grocery_list, new_item, qty=1)
  grocery_list[new_item] = qty
  return grocery_list
end

puts add_item(grocery_list,"orange", 2)

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  return grocery_list
end

#puts remove_item(grocery_list, "orange")

def modify_item(grocery_list, item, qty)
  grocery_list[item] = qty
  return grocery_list
end

puts modify_item(grocery_list,"orange", 1)

def print_list(grocery_list)
  puts "#########################"
  puts "Here is your grocery list"
  grocery_list.each do |item, qty|
    puts "Buy #{qty} #{item}"
  end
  puts "#########################"
end

print_list(grocery_list)










