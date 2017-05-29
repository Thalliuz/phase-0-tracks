module Shout 
  def yell_angrily(words)
    words + '!!!' + ' :('
  end
def yell_happily (words)
  words + '<3<3<3' + ' :)'
  end 
end
  
class Teacher
    include Shout
  end

class Police
  include Shout
end 

teacher = Teacher.new
puts teacher.yell_angrily('Stop throwing paper')
puts teacher.yell_happily('Test on monday')

police = Police.new
puts police.yell_angrily('Get that bad guy')
puts police.yell_happily('We got the bad guy')


#module Shout
#  
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yelling_happily(words)
#    words + "<3<3<3" + " :)"
#    
#  end
#end
#
# ----driver code-----
#puts Shout.yell_angrily("Get out of my yard")
#puts Shout.yelling_happily("I love coding")
