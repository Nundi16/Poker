require_relative './card'

# Pakli
class Deck
  attr_reader :cards

  def initialize
    @cards = []
    CardValue.constants.each do |val|
      CardColor.constants.each do |color|
        @cards.push(Card.new(color, val))
      end
    end
  end

  def shuffel
    shuff_num = rand(100...200)
    (1...shuff_num).each do |_i|
      card1 = rand(0...51)
      card2 = rand(1...51)
      puff = @cards[card1]
      @cards[card1] = @cards[card2]
      @cards[card2] = puff
    end
  end

  def to_s
    @cards.join(';')
  end
end
