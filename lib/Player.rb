require_relative 'Board'
#Player class that initializes that player name and their preffered character choice for the game
class Player
  attr_accessor :name, :character

  def initialize(name, character)
    self.name = name
    self.character = character
  end
end
