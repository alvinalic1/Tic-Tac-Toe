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
    winner = 1

    until winner > 5
      puts "Is this working"
      @board.print_board
      puts "#{@player1.name}'s turn"
      puts "row number: "
      row = gets.chomp
      puts "column number: "
      column = gets.chomp
      @board.board[row.to_i][column.to_i] = @player1.character
      @board.print_board
      puts "#{@player2.name}'s turn"
      puts "row number: "
      row = gets.chomp
      puts "column number: "
      column = gets.chomp
      @board.board[row.to_i][column.to_i] = @player2.character
    end
  end


end