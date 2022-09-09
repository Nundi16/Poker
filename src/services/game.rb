require_relative('../model/deck')
require_relative('../model/player')

# Játék
class Game
  def initialize
    @deck = Deck.new
    @playres = []
  end

  def add_player(player)
    nil if @playres.any? { |p| p.name == player.name }

    @playres.push(player)
  end

  def start
    if @playres.count < 2
      puts 'Legalább 2 játékos nélkül nem lehet elkezdeni a játékot'
      return nil
    end
    @deck.shuffel
    puts @deck
    dealing
  end

  def dealing
    @playres.each do |player|
      2.times do |_j|
        player.add_card(@deck.cards.shift)
      end
    end
  end
end

# Zseton pénztár
module TokenShop
  def buy_token(token_val, token_qty, player)
    false if player.cash < (token_val * token_qty) / 10
    player.cash -= (token_val * token_qty) / 10
    player.token += Array.new(token_qty) { |_t| _t = Token.new(token_val) }
    true
  end

  def sel_token(token_val, token_qty, player)
    false if player.token.select { |t| t.value == token_val }.count < token_qty
    player.cash += (token_val * token_qty) / 10
    player.token -= Array.new(token_qty) { |_t| _t = Token.new(token_val) }
    true
  end
end
