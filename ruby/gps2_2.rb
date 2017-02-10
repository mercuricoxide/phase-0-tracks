# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # convert string into multiple strings (according to number of items listed) 
  # convert string of items into an array
  # set default quantity for each item of 1
  # map quantity of 1 to each item in the array to create a hash of a grocery list
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: pass item name and quantity into grocery list hash from the create list method
# output: the hash of the first grocery list, updated with the new item.

# Method to remove an item from the list
# input: list, item name
# steps: delete item (and quantity) of that item from the hash
# output: an updated hash with the chosen item removed.

# Method to update the quantity of an item
# input: list, item, and quantity
# steps: add or subtract from the original quantity
# output: an updated hash with the chosen item's quantity affected

# Method to print a list and make it look pretty
# input: list, items, and their quantities
# steps: To make the list pretty, add text such as a header, etc.
 # print list
# output: a pretty list

def create_list(list)
  list = list.split(" ")
  qty = 1
  groceries = {}
  list.each do |items|
    groceries[items] = 1
  end
  return groceries
end

#grocery_list = create_list("carrots apples cereal pizza")

#puts grocery_list
#puts grocery_list.class

def modify_item(grocery_list, new_item, qty)
  grocery_list[new_item] = qty
  return grocery_list
end

#puts add_item(grocery_list,"orange", 1)

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  return grocery_list
end

#puts remove_item(grocery_list,"orange")

#Refactor this, method is the same for add_item. If you type an existing item in the function, it updates it. If you type a new item in the function, it adds the new item and quantity to the hash.
# def change_qty(grocery_list, item, qty)
#   grocery_list[item] = qty
#   return grocery_list
# end

#puts change_qty(grocery_list, "carrots", 2)

def pretty_list(grocery_list)
  puts "##############################"
  puts "Here is your grocery list:"
  puts "=============================="
  grocery_list.each do |item, qty|
    puts "Purchase #{qty} #{item}"
  end
  puts "##############################"
end


# Test Code

grocery_list = create_list("lemonade tomatoes onions ice_cream")
puts modify_item(grocery_list,"lemonade",2)
puts modify_item(grocery_list,"tomatoes",3)
puts modify_item(grocery_list,"ice_cream",4)
puts remove_item(grocery_list,"lemonade")
puts modify_item(grocery_list,"ice_cream",1)
puts pretty_list(grocery_list)

# Reflect

# - This challenge I learned that pseudo-code provides a blueprint to the overall program and is not something that should be glossed over.
# - Arrays and Hashes allow us to manipulate data that are grouped in sets, though them being a set requires extra steps of iteration.
# - A method returns the arguments that the user provides when calling the method.
# - You can pass strings and integers into methods as arguments, as long as those arguments are defined within the method (or within a previous method you are calling from).
# - You can pass information through methods by creating a variable and setting it equal to the method and the arguments you'd like to use. You can then use that new variable in the following methods.
# - I believe I made great strides with passing information between methods as well as implicit return and how it can cause errors. I feel like I need more practice with creating new arrays and hashes before that is solidified.





