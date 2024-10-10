class Board
  attr_accessor :board

  def initialize()
    self.board = Array.new(3) {Array.new(3, "_")}
  end

  def print_board
    iterator = 0
    puts "  0 1 2"
    self.board.each do |x|
      puts "#{iterator} " + x.join(" ")
      iterator += 1
    end
  end

  def check_winner?
  end

end

x = Board.new
x.print_board