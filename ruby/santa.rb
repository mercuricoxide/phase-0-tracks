class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    new_reindeer_ranking = @reindeer_ranking.unshift(reindeer_ranking.delete_at(reindeer_ranking.index(reindeer))).rotate(1)
  end

  def initialize(gender, ethnicity, sleigh, weight)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @sleigh = sleigh
    @weight = weight
    @reindeer_ranking = ["Rudolf", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0
  end

  #getter methods for attributes

  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

  def sleigh
    @sleigh
  end

  def weight
    @weight
  end

  def reindeer_ranking
    @reindeer_ranking
  end

  def age
    @age
  end

  #setter methods for attributes

  def gender=(new_gender)
    @gender = new_gender
  end

   def ethnicity=(new_ethnicity)
    @ethnicity = new_ethnicity
  end

  def sleigh=(new_sleigh)
    @sleigh = new_sleigh
  end

  def weight=(new_weight)
    @weight = new_weight
  end

  def reindeer_ranking=(new_reindeer_ranking)
    @reindeer_ranking = new_reindeer_ranking
  end

  def age=(new_age)
    @age = new_age
  end


end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_sleighs = ["holly", "birch", "yew", "mahogany", "ebony", "oak", "cherry"]
example_weights_pounds = [250, 180, 200, 140, 400, 1500, 10]
example_genders.length.times do |i|
santas << Santa.new(example_genders[i], example_ethnicities[i], example_sleighs[i], example_weights_pounds[i])
end

bobby = Santa.new("male", "black", "yew", 180)

p bobby
p bobby.get_mad_at("Prancer")



