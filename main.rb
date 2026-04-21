# frozen_string_literal: true

require_relative './lib/players'
require_relative './lib/boards'

board = Board.create_board

p board.line_1
p board.line_2
p board.line_3

player_one = Player.new("Felippe", "X")
puts player_one.name
