class Puppy

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
fido = Puppy.new
puts 
fido.fetch("ball")
puts
fido.speak(5)
puts 
fido.age(6)
puts
fido.roll_over
puts
fido.sit
