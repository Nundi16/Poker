require_relative './src/services/game'

game = Game.new

game.add_player(Player.new('Nándi'))
game.add_player(Player.new('Jóska'))
game.add_player(Player.new('Zsuzsi'))

game.start

a = gets.chmp
