class Board
  attr_accessor :board

  def initialize
    self.board = Array.new(3) { Array.new(3, '_') }
  end

  def print_board
    iterator = 0
    puts '  0 1 2'
    board.each do |x|
      puts "#{iterator} " + x.join(' ')
      iterator += 1
    end
  end

  def check_winner?(character)
    if check_rows?(character) == true
      true
    elsif check_columns?(character) == true
      true
    else
      check_diagnols?(character) == true
    end
  end

  private

  def check_rows?(character)
    if board.map { |row| row[0] }.uniq == [character]
      true
    elsif board.map { |row| row[1] }.uniq == [character]
      true
    else
      board.map { |row| row[2] }.uniq == [character]
    end
  end

  def check_columns?(character)
    if board.transpose.map { |column| column[0] }.uniq == [character]
      true
    elsif board.transpose.map { |column| column[1] }.uniq == [character]
      true
    else
      board.transpose.map { |column| column[2] }.uniq == [character]
    end
  end

  def check_diagnols?(character)
    if board[0][0] == character && board[1][1] == character && board[2][2] == character
      true
    elsif board[0][2] == character && board[1][1] == character && board[2][0] == character
      true
    else
      false
    end
  end
end
