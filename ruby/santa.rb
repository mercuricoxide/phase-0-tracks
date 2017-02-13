class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def initialize(gender, ethnicity, sleigh, weight)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @sleigh = sleigh
    @weight = weight
  end

  @reindeer_ranking = ["Rudolf", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_sleighs = ["holly", "birch", "yew", "mahogany", "ebony", "oak", "cherry"]
example_weights_pounds = [250, 180, 200, 140, 400, 1500, 10]
example_genders.length.times do |i|
santas << Santa.new(example_genders[i], example_ethnicities[i], example_sleighs[i], example_weights_pounds[i])
end

p santas[2]