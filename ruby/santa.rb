class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize( gender, ethnicity ) 
    
     "Initializing Santa instance ..."  
    
    @gender = gender
    @ethnicity = ethnicity
    @reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
      "Comet", "Cupid", "Donner", "Blitzen"]
    @age = Random.rand(140)
  
  end
  
  def speak 
   
    print "Ho, ho, ho! Haaaappy holidays!"
  
  end

  def eat_milk_and_cookies( cookie_type )
    
    print "That was a good #{cookie_type} Cookie!"
  
  end 
  
  def reindeer_ranking
    
    puts "These are santas reindeer:"
    
    @reindeer.each do | reindeer |
    reindeer
    
    end
  
  end 
  
  def celebrate_birthday 
    
    @age += 1
    
    puts "Santa is now #{@age}"
  
  end 
  
  def get_mad_at(reindeer_name)
    last_reinder = @reindeer.index(reindeer_name)
    
    puts "The new Reindeer Order:"
    
    @reindeer.push(@reindeer.delete_at(last_reinder))

  end 

  # --------setter method----------

  #def gender=(new_gender)
  #  @gender = new_gender
  #end 
 
# ------getter methods-------

  #def age 
  #  return @age 
  #end 
#
  #def ethnicity
  #  return @ethnicity
  #end 
  
end

# -------Driver Code---------
santas = []
gender = ["Agender", "Androgyne", "Androgynous", "Bigender"]
ethnicity = ["white", "black", "latino", "japanese", "n/a"]

4.times do 
rand_gender = gender.sample
rand_ethnicity = ethnicity.sample
santas << Santa.new(rand_gender, rand_ethnicity)
end 
santas.each do | santas |
puts santas.speak
puts santas.eat_milk_and_cookies( "Choco Chip" )
puts santas.eat_milk_and_cookies( "Raisin" )
puts santas.reindeer_ranking
puts santas.celebrate_birthday
puts santas.get_mad_at( "Vixen")
puts " Santa is #{santas.age} years old."
puts " Santas gender is #{santas.gender}"
puts " Santas ethnicity is #{santas.ethnicity}"
end 
