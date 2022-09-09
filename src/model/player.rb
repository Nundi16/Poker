# Játékos
class Player
  def initialize(name)
    @name = name
    @cards = []
    @tokens = []
    @cash = 0
  end

  def add_card(card)
    @cards.push(card)
  end
  attr_accessor :cash
  attr_reader :name
end
