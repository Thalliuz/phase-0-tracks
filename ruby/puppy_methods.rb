class Puppy
  
  def initialize
    print "initializing new puppy instance..."
  end

  def fetch( toy )
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak( woof_times )
    woof_times.times { print "Woof!"}
  end 

  def roll_over
    print "roll over"
  end 
  
  def age( human_years )
    print human_years * 7
  end 
  
  def sit
    print "Fido sat down."
  end
end
#Driver Code
#fido = Puppy.new
#puts 
#fido.fetch("ball")
#puts
#fido.speak(5)
#puts 
#fido.age(6)
#puts
#fido.roll_over
#puts
#fido.sit


class Batman 
  def initialize
    puts "Cooking in the batcave"
  end 
  
  def call_batmobile( location )
  puts "Alfred send batmobile to #{location}"
  end 

  def suit_up
    puts "Getting ready for the big show."
  end 

end

batman_clones = []

50.times do 
  
  batman_clones << Batman.new

end 

batman_clones.each do | clone |
  
  clone.call_batmobile( "Italy" )
  
  clone.suit_up
 
  end 





