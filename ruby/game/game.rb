#word = "super"
## print the board blankly for the number of letters in the word
#length_of_word = word.length 
#board = Array.new(length_of_word, "-").join(" ")
## have the user guess a letter 
#guessed_letter = "s"
#p word.include?(guessed_letter)
## have the board update 
#p letter_position = word.index(guessed_letter)
#p board[letter_position] = guessed_letter
#print board

class Game
  attr_accessor :word, :used_letters, :guess_count, :total_guesses
  attr_writer :is_over
  
  def initialize( word )
    @word = word
    @guess_count = 0
    @total_guesses = @word.length
    @used_letters = []
    @is_over = false
  end 

  def blank_board
    length_of_word = @word.length
    @board = Array.new(length_of_word, "-").join(" ")
  end

  def board_update
    letter_position = @word.index(letter)
    @board[letter_position] = letter
  end
   
   def is_used_letter
    @used_letters.include?( letter ) 
  end 
  
  def is_letter_in_word
    @word.include?(letter)
  end
  
  def check_letter(letter)
    
    if is_used_letter
      puts "Choose again"
      letter = gets.chomp.downcase
    
    elsif is_letter_in_word
      puts "You got one!"
      board_update( letter )
    
    else
      @used_letters << letter
  end 
@guess_count += 1
  end
  def win_game
    !board_update.include("-")
end 
end
puts "GAME: WORD_GUESS!"
puts "Enter a word for the guesser to figure out: "
word = gets.chomp.downcase
new_game = Game.new( word )

until new_game.guess_count == new_game.total_guesses || new_game.win_game
  puts new_game.board_update

  print 'guess a letter: '
  letter = gets.chomp.downcase

  if letter == ""
    puts "Try again"
  else
    new_game.check_letter( letter )
  end
end 
