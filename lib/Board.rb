


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
      if(check_rows?(character) == true)
        puts"Game over"
        return true
      elsif(check_columns?(character) == true)
        puts "Game over"
        return true
      elsif(check_diagnols?(character) == true) 
        puts "Game over"
        return true
      else 
        return false
      end
  end

  private

  def check_rows?(character)
    if(self.board.map {|row| row[0]}.uniq == [character])
      return true
    elsif(self.board.map {|row| row[1]}.uniq == [character])
      return true
    elsif(self.board.map {|row| row[2]}.uniq == [character])
      return true
    else
      return false
    end
  end

  def check_columns?(character)
    if(self.board.transpose.map {|column| column[0]}.uniq == [character])
      return true
    elsif(self.board.transpose.map {|column| column[1]}.uniq == [character])
      return true
    elsif(self.board.transpose.map {|column| column[2]}.uniq == [character])
      return true
    else
      return false
    end
  end

  def check_diagnols?(character)
    if(self.board[0][0] == character && self.board[1][1] == character && self.board[2][2] == character)
      return true
    elsif(self.board[0][2] == character && self.board[1][1] == character && self.board[2][0] == character)
      return true
    else
      return false
    end
  end
  
end

