# frozen_string_literal: true

require_relative './lib/players'
require_relative './lib/boards'
require_relative './lib/matches'

player_one = Player.new
player_two = Player.new

player_one.name = player_one.ask_player_one_name(player_one)
player_one.role = player_one.ask_player_one_role(player_one)

player_two.name = player_two.ask_player_two_name(player_two)
player_two.set_player_two_role(player_one, player_two)

board = Board.create_board
p board.line_1, board.line_2, board.line_3

play_match(player_one, player_two, board)
