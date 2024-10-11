require_relative 'Player.rb'
require_relative 'Board.rb'

class Game

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def instruction
    puts "The game board shows to row and column number"
    puts "it is your turn you will be asked where you want to place your piece"
    puts "row number will go first followed by the column number"
  end

  def play
    winner = false

    until winner == true
      @board.print_board

      puts "#{@player1.name}'s turn"
      puts "row number: "
      row = gets.chomp
      puts "column number: "
      column = gets.chomp

      @board.board[row.to_i][column.to_i] = @player1.character
      @board.print_board
      if(@board.check_winner?(@player1.character))
        puts "Game over, #{@player1.name} wins"
        winner = true
        break
      end

      puts "#{@player2.name}'s turn"
      puts "row number: "
      row = gets.chomp
      puts "column number: "
      column = gets.chomp

      @board.board[row.to_i][column.to_i] = @player2.character
      if(@board.check_winner?(@player2.character))
        puts "Game over, #{@player2.name} wins"
        winner = true
        break
      end

      if(@board.board.flatten.include?("_") == false)
        puts "Cats Game, Game over"
        break
      end
    end
  end


end