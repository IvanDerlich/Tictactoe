require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
require_relative 'board_viewer.rb'
require_relative 'game_viewer.rb'

game = Game.new()
game.play
