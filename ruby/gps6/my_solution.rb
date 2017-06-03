# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# 
#
require_relative 'state_data'

class VirusPredictor
# initialize method holds instnce variables and starts the class instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # a mehtod to call and run the methods to keep everything clean
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  # private to keep other methods and people from messing up 
  private


  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end
    number_of_deaths = (@population * x).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  if @population_density >= 200
      number_of_months = 0.5
    elsif @population_density >= 150
      number_of_months = 1
    elsif @population_density >= 100
      number_of_months = 1.5
    elsif @population_density >= 50
      number_of_months = 2
    else
      number_of_months = 2.5
    end

    puts " and will spread across the state in #{number_of_months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density],data[:population]).virus_effects
end  


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:#population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][#:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["#California"][:population_density], STATE_DATA["California"][:#population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:#population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

# the use of the " => and : " key => value and key: value

# require_relative uses the file chosen from inside the same directory/folder.

# iterate thorugh a hash: loops, .each 

# what stood out in the refactoring about the variables were that they were instance variables and that they are able to be called through out the class.

# In this challenge I most solidified my ablity to refactor.

