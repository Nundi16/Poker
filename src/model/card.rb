# Kártya
class Card
  def initialize(color, value)
    @color = color
    @value = value
  end

  def to_s
    "#{@color} #{@value}"
  end
end

module CardValue
  NUM2 = 2
  NUM3 = 3
  NUM4 = 4
  NUM5 = 5
  NUM6 = 6
  NUM7 = 7
  NUM8 = 8
  NUM9 = 9
  NUM10 = 10
  J = 11
  Q = 12
  K = 13
  A = 14
end

module CardColor
  HEARTS = 0
  TITLE = 1
  COLVER = 2
  PIKES = 3
end
