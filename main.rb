# frozen_string_literal: true

require_relative './lib/players'
require_relative './lib/boards'

puts "Player 1 - What's is yor name?"
player_one_name = gets.chomp
puts "#{player_one_name}, choose your role('x' or 'o'):"
player_one_role = gets.chomp

player_one = Player.new(player_one_name, player_one_role)
puts "#{player_one.name}, You will play with '#{player_one.role}'!"

puts "Player 2 - What's is yor name?"
player_two_name = gets.chomp
player_one.role == "o" ? player_two_role = "x" : player_two_role = "o"

player_two = Player.new(player_two_name, player_two_role)
puts "#{player_two.name}, You will play with '#{player_two.role}'!"

board = Board.create_board
p board.line_1, board.line_2, board.line_3

