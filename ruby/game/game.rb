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
  attr_accessor :word, :used_letters, :guess_count, :total_guesses, :letter 
  attr_writer :is_over
  
  def initialize( word )
    @word = word
    @guess_count = 0
    @total_guesses = @word.length
    @used_letters = []
    @is_over = false
    @board = ["-"]
    @guessed_letter = nil 
  end 

  def blank_board
    length_of_word = @word.length
    @board = Array.new(length_of_word, "-").join("")
  end

  def board_update
    if is_letter_in_word
      letter_position = @word.index( @guessed_letter )
      @board[letter_position] = @guessed_letter
    end
    print @board
  end
   
  def is_used_letter
    @used_letters.include?( @guessed_letter )
  end 
  
  def is_letter_in_word
    @word.include?( @guessed_letter )
  end
  
  def check_letter( letter )
    
    @guessed_letter = letter
    
    if is_used_letter
      puts "Choose again"
      @guessed_letter = gets.chomp.downcase
    
    elsif is_letter_in_word
      puts "You got one!"
  
    else
      @used_letters << @guessed_letter
    end 
    @guess_count += 1
  end
  
  def win_game
    !@board.include?("-")
  end 
end

puts "GAME: WORD_GUESS!"
puts "Enter a word for the guesser to figure out: "
word = gets.chomp.downcase
new_game = Game.new( word )
puts new_game.blank_board

until new_game.guess_count == new_game.total_guesses || new_game.win_game

  print 'guess a letter: '
  letter = gets.chomp.downcase

  if letter == "" || letter == nil
    puts "Try again (Blank spaces don't work, Please enter a letter)"
    letter = gets.chomp.downcase
  else
    new_game.check_letter( letter )
  end
    new_game.board_update
end 

