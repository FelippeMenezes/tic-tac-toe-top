# frozen_string_literal: true

require 'colorize'

# This class is a match of Tic-Tac-Toe.
class Match
  attr_accessor :player_one, :player_two, :board

  def initialize(player_one, player_two, board)
    @player_one = player_one
    @player_two = player_two
    @board = board
  end

  def start_match
    set_players
    @board.show_board(@player_one, @player_two)

    play_match = true
    player_turn = true
    counter_turn = 0

    while play_match
      current_player = player_turn ? @player_one : @player_two
      color = player_turn ? :yellow : :green

      puts "#{current_player.name.colorize(color)}, choose your move."
      player_move = gets.chomp

      if execute_move(player_move, current_player.role)
        counter_turn += 1
        @board.show_board(@player_one, @player_two)

        if check_winner(current_player.role)
          puts "FINISH! #{current_player.name.colorize(color)} won!"
          play_match = false
        elsif counter_turn >= 9
          puts "Cat's game! FINISH!".colorize(:red)
          play_match = false
        else
          player_turn = !player_turn
        end
      else
        puts 'Invalid choice or position taken, try again!'.colorize(:red)
      end
    end
  end

  private

  def execute_move(move, role)
    [@board.line1, @board.line2, @board.line3].each do |line|
      if line.include?(move) && move.match?(/^[1-9]$/)
        line[line.index(move)] = role
        return true
      end
    end
    false
  end

  def check_winner(role)
    winning_lines = [
      @board.line1, @board.line2, @board.line3,
      [@board.line1[0], @board.line2[0], @board.line3[0]],
      [@board.line1[1], @board.line2[1], @board.line3[1]],
      [@board.line1[2], @board.line2[2], @board.line3[2]],
      [@board.line1[0], @board.line2[1], @board.line3[2]],
      [@board.line1[2], @board.line2[1], @board.line3[0]]
    ]
    winning_lines.any? { |line| line.all?(role) }
  end

  def set_players
    @player_one.name = @player_one.ask_player_one_name
    @player_one.role = @player_one.ask_player_one_role

    @player_two.name = @player_two.ask_player_two_name
    @player_two.choose_player_two_role(@player_one)
  end
end
