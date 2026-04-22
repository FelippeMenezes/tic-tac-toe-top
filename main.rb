# frozen_string_literal: true

require_relative './lib/players'
require_relative './lib/boards'
require_relative './lib/matches'

player_one = Player.new
player_two = Player.new

board = Board.create_board

match = Match.new(player_one, player_two, board)

match.start_match(player_one, player_two, board, match)
