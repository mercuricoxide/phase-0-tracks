#Include client's name, age, number of children, decor theme,

#Prompt user for info

client_arr = []

puts "Please enter your name:"
name = gets.chomp
puts "Your age:"
age = gets.chomp.to_i
puts "Number of children:"
num_of_children = gets.chomp.to_i
puts "And decor theme (neutral, light, dark, or extreme):"
decor = gets.chomp
puts "Do you have pets? (y/n)"
pets = gets.chomp
case pets
  when "y"
    pets = true
  when "n"
    pets = false
  end

client_arr << name
client_arr << age
client_arr << num_of_children
client_arr << decor
client_arr << pets

p client_arr

client_info = {
  name: name,
  age: age,
  number_of_children: num_of_children,
  decor_theme: decor,
  pets: pets
}

#Print hash to screen after all questions answered

p client_info

#Give user opportunity to update a key

puts "Is there any data you would like to update? Please enter name, number_of_children, etc. Or enter 'none'"
change = gets.chomp
if change == "name"
  puts "Please update"
  name_change = gets.chomp
  client_info[:name] = name_change
  elsif change == "age"
    puts "Please update"
    age_change = gets.chomp
    client_info[:age] = age_change
  elsif change == "number_of_children"
    puts "Please update"
    num_of_children_change = gets.chomp
    client_info[:number_of_children] = num_of_children_change
  elsif change == "decor_theme"
    puts "Please update"
    decor_theme_change = gets.chomp
    client_info[:decor_theme] = decor_theme_change
  elsif change == "pets"
    puts "Please update"
    pets_change = gets.chomp
    client_info[:pets] = pets_change
  else change == "done"
  end

p client_info







    
