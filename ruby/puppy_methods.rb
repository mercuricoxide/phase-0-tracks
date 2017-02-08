# SPECIES ------------------------
# Canis Lupus
# 
# CHARACTERISTICS ----------------
# Self-grooming: No
# Friendly: Yes
# Leg Count: 4
# Amount of Shedding: Varies
# Fur Length: Varies
# 
# BEHAVIOR -----------------------
# Sit
# Beg
# Roll Over

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do |i|
      i = "woof"
      p i
    end
  end

  def roll_over
    return "rolls over"
  end

  def dog_years(h_years)
    d_years = 7 * h_years
  end

  def dog_commands
    puts "Give a dog command:"
    command = gets.chomp
    if command == "sit"
      puts "The dachshund puppy is sitting"
    elsif command == "beg"
      puts "The dachshund puppy is begging"
    else puts "The dachshund puppy did not understand, try a basic command like 'sit' or 'beg'."
    end
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

dachshund = Puppy.new

p dachshund.fetch("ball")

p dachshund.speak(5)

p dachshund.roll_over

p dachshund.dog_years(7)

puts dachshund.dog_commands

class Dog

  def clean(body_part)
    puts "The dog is cleaning his #{body_part}" 
  end

  def poop
    puts "The dog is pooping"
  end

  def initialize
    puts "Initializing new Dog instance ..."
  end
    
  end

array = []

50.times do 
  dogs = Dog.new
  array << dogs
end

array.each do |i|
  i.poop
  i.clean("leg")
end










