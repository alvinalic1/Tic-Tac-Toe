require_relative 'lib/Board.rb'
require_relative 'lib/Player.rb'
require_relative 'lib/Game.rb'



puts "Enter your name: "
name = gets.chomp
puts "#{name} what character will you be using (X or O)"
character = gets.chomp
player1 = Player.new(name, character)

puts "Enter your name: "
name = gets.chomp
puts "#{name} what character will you be using (X or O)"
character = gets.chomp
player2 = Player.new(name, character)

game_board = Board.new

game = Game.new(player1, player2, game_board)
game.instruction
game.play

