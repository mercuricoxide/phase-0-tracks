class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end


  def initialize(gender, ethnicity, sleigh, weight)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @sleigh = sleigh
    @weight = weight
  end

#getter methods for attributes

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

#setter methods for attributes

  def gender=(new_gender)
    @gender = new_gender
  end

end

#japanese_santa = Santa.new
#japanese_santa.eat_milk_and_cookies("green tea")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santas

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_sleighs = ["holly", "birch", "yew", "mahogany", "ebony", "oak", "cherry"]
# example_weights_pounds = [250, 180, 200, 140, 400, 1500, 10]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], example_sleighs[i], example_weights_pounds[i])
# end

# p santas

bobby = Santa.new("male", "black", "yew", 180)

p bobby
p bobby.get_mad_at("Prancer")



