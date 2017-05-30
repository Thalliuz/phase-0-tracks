##Game Class

# setup a class for game 

class WordGuess

# set initialize method
# initialize the word array
# number of guesses
# and if the game is comleted
 attr_accessor :word :used_letters :guess_count
 attr_writer :is_over
  def initialize( word )
    @guess_count = 0
    @is_over = false
    @word = word
    @used_letters = []
    @guesses_allowed = word.length
    @board = Array.new(length_of_word, "-").join(" ")
  end
# create a method that runs letters guessed by
# the guesser
  def is_used_letter( letter )
    @used_letters.include?( letter ) 
  end 
  
  def is_letter_in_word( letter )
    @word.include?( letter )
  end

  def check_letter( letter )
    if is_used_letter( letter )
  #let them choose again
    elsif is_letter_in_word( letter )

    else
      @used_letters << letter
  end 

  def display_guess()




  end 
end 




# user interface 

# print out the game name 
puts 'Welcome to Word Guess!'
game = WordGuess.new

puts " Enter a word for the gusser to guess: "
word = gest.chomp.downcase

#until loop 
until
#ask user which letter they want to guess
puts "What letter would you like to guess: "
 user_input = gets.chomp


# check if letter is equal to the used_letter
#chceck if the ther letter is eqaul to a letter
#in the word
# else it would be sotered in the used leters

# check if the word has been soloved
#or if the guesses have hit maximum amount
# if game has been solved puts "good game you've won"
# if user has guessed too many puts "sorry better luck next time"
# else += 1 guess_count 
#


































