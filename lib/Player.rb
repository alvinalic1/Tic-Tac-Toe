require_relative 'Board'

class Player
  attr_accessor :name, :character

  def initialize(name, character)
    self.name = name
    self.character = character
  end
end
