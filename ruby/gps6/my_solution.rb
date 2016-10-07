# Virus Predictor

# I worked on this challenge [with: Alina].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
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


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown 
# in the state_data file?
  # Hash rocket (=>) is useful to assign anything as a key, but defining keys
  # with (:key_name) can only be done with more simple symbols
# What does require_relative do? How is it different from require?
  # require_relative allows you to load a file in the same directory as the one 
  # containing that statement. It allows you to connect another file, while 
  # 'require' only works within the current directory, so require_relative allows
  # us to connect files within the same directory regardless of current directory.
# What are some ways to iterate through a hash?
  # hash.each, (hash.each_key, hash.each_pair, etc. are very specialized
  # and .each will probably be most used) 
# When refactoring virus_effects, what stood out to you about the variables,
# if anything?
  # That we don't have to pass them in, since their scope is the instance of
  # our class.
# What concept did you most solidify in this challenge?
  # Scope was big.  I thought coming in that I had it down completely, but
  # discussing the scope of constant variables was enlightening, as was the
  # discussion and application of instance variables.
# 