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
  array.each do |items|
    groceries[items] = 1
  end
  return groceries
end

# puts create_list("carrots apples cereal pizza")

grocery_list = create_list("carrots apples cereal pizza")

def modify_list(grocery_list, item, qty=1)
  grocery_list[item] = qty
  return grocery_list
end

puts modify_list(grocery_list,"orange", 2)

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  return grocery_list
end

#puts remove_item(grocery_list, "orange")

# def modify_item(grocery_list, item, qty)
#   grocery_list[item] = qty
#   return grocery_list
# end

puts modify_list(grocery_list,"orange", 1)

def print_list(grocery_list)
  puts "#########################"
  puts "Here is your grocery list"
  grocery_list.each do |item, qty|
    puts "Buy #{qty} #{item}"
  end
  puts "#########################"
end

print_list(grocery_list)


# Reflect

# - This challenge I learned that pseudo-code provides a blueprint to the overall program and is not something that should be glossed over.
# - Arrays and Hashes allow us to manipulate data that are grouped in sets, though them being a set requires extra steps of iteration.
# - A method returns the arguments that are provided when calling the method.
# - You can pass strings and integers into methods as arguments, as long as those arguments are defined within the method (or within a previous method you are calling from).
# - You can pass information through methods by creating a variable and setting it equal to the method and the arguments you'd like to use. You can then use that new variable in the following methods.
# - I believe I made great strides with passing information between methods as well as implicit return and how it can cause errors.










