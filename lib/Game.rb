require_relative 'Player'
require_relative 'Board'
# A Game class that initializes both the players and the game board
# Each players takes a turn and after each turn it checks for a winner
# 2 private methods check if the spot is available to ensure a player cant make a move if a peice is already there
# And the second private method allows each player to take their turn
class Game
  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def instruction
    puts 'The game board shows to row and column number'
    puts 'it is your turn you will be asked where you want to place your piece'
    puts 'row number will go first followed by the column number'
  end

  def play
    winner = false

    until winner == true
      @board.print_board
      player_turn(@player1, @board)

      if @board.check_winner?(@player1.character)
        puts "Game over, #{@player1.name} wins"
        break
      end
      if @board.board.flatten.include?('_') == false
        puts 'Cats Game, Game over'
        break
      end

      @board.print_board
      player_turn(@player2, @board)

      if @board.check_winner?(@player2.character)
        puts "Game over, #{@player2.name} wins"
        break
      end

      if @board.board.flatten.include?('_') == false
        puts 'Cats Game, Game over'
        break
      end
    end
  end

  private

  def spot_available?(_board, row, column)
    return true if @board.board[row][column] == '_'

    false
  end

  def player_turn(player, board)
    complete = false
    while complete != true
      puts "#{player.name}'s turn"
      puts 'row number: '
      row = gets.chomp
      puts 'column number: '
      column = gets.chomp

      if spot_available?(board, row.to_i, column.to_i)
        @board.board[row.to_i][column.to_i] = player.character
        complete = true
      else
        puts 'That spot is unavailable, pick another'
        next
      end
    end
  end
end
