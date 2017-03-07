# Virus Predictor

# I worked on this challenge [by myself, with: Adriel Saporta].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#require_relative allows the program to draw data from a separate file. It differs from require, as require searches root directories such as gems. 

class VirusPredictor
#responsible for declaring the attributes used throughout the class, which runs whenever a new instance of the class is created.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @i = 0
  end

#calls the predicted deaths and speed of spread for each state when called.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

#takes population density, population, and state as arguments and calculates the number of deaths based on the population density of each state. Calculated by multiplying by a given constant then rounding down.
  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

 #refactored by creating instance variable for i for the constant and removing the equation for number_of_deaths from each number and placing it at the end. The constant @i is initialized as @i = 0.
    def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
     @i = 0.4
    elsif @population_density >= 150
     @i = 0.3
    elsif @population_density >= 100
     @i = 0.2
    elsif @population_density >= 50
     @i = 0.1
    else
     @i = 0.05
    end


number_of_deaths = (@population * @i).floor
    

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#takes population density and the state as arguments and calculates the speed of spread based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

   #refactored by removing speed = 0 and removing the + from the +=

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, info|
  state = VirusPredictor.new(state, info[:population_density], info[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section

#1.The overall hash (the state name) uses hash rockets, while the population and density data are nested elements and use symbols.
#2.Require_relative links data from another file to the coding file, allowing access to that data. Require is used for modules and gems.
#3.You can iterate through a hash using the .each method.
#4.Since the methods did not require input, we were able to remove the variables (arguments) from the methods in virus_effects.
#5.This challenge helped solidify iteration, refactoring, and declaring instance variables.



