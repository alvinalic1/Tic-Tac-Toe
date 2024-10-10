class Board
  attr_accessor :board

  def initialize()
    self.board = Array.new(3) {Array.new(3, "_")}
  end

  def print_board
    self.board.each do |x|
      puts x.join(" ")
    end
  end


end

x = Board.new
x.print_board