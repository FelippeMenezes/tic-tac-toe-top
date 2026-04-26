# frozen_string_literal: true

require_relative './lib/player'
require_relative './lib/board'
require_relative './lib/match'

player_one = Player.new
player_two = Player.new

board = Board.create_board

match = Match.new(player_one, player_two, board)

match.start_match
