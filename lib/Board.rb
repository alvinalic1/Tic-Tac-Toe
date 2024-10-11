


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

  def check_winner?(character)
    row1 = self.board.map {|row| row[0]}
    row2 = self.board.map {|row| row[1]}
    row3 = self.board.map {|row| row[2]}
    if(row1.uniq == character)
      return true
    elsif(row2.uniq == character)
      return true
    elsif(row3.uniq == character)
      return true
    else 
      return fale
    end
      
  end

  private

  def check_rows?(character)
    row1 = self.board.map {|row| row[0]}
    row2 = self.board.map {|row| row[1]}
    row3 = self.board.map {|row| row[2]}
    if(row1.uniq == [character])
      return true
    elsif(row2.uniq == [character])
      return true
    elsif(row3.uniq == [character])
      return true
    else 
      return false
    end
  end

  def check_columns?(board)
    column1 = self.board.transpose.map {|column| column[0]}
    column2 = self.board.transpose.map {|column| column[1]}
    column3 = self.board.transpose.map {|column| column[2]}
    if(column1.uniq == [character])
      return true
    elsif(column2.uniq == [character])
      return true
    elsif(column3.uniq == [character])
      return true
    else 
      return false
    end
  end
  
end

