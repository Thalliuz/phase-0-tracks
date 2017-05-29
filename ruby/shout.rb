module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "<3<3<3" + " :)"
    
  end
end

# ----driver code-----
puts Shout.yell_angrily("Get out of my yard")
puts Shout.yelling_happily("I love coding")
