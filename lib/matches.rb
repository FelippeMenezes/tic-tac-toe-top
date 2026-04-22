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

    while play_match == true
      counter_turn += 1
      if player_turn == true
        puts "#{@player_one.name.colorize(:yellow)}, choose your move."
        player_one_move = gets.chomp

        if player_one_move == '1' && @board.line1[0] != 'o' && @board.line1[0] != 'x'
          @board.line1[0] = @player_one.role
          player_turn = false
        elsif player_one_move == '2' && @board.line1[1] != 'o' && @board.line1[1] != 'x'
          @board.line1[1] = @player_one.role
          player_turn = false
        elsif player_one_move == '3' && @board.line1[2] != 'o' && @board.line1[2] != 'x'
          @board.line1[2] = @player_one.role
          player_turn = false
        elsif player_one_move == '4' && @board.line2[0] != 'o' && @board.line2[0] != 'x'
          @board.line2[0] = @player_one.role
          player_turn = false
        elsif player_one_move == '5' && @board.line2[1] != 'o' && @board.line2[1] != 'x'
          @board.line2[1] = @player_one.role
          player_turn = false
        elsif player_one_move == '6' && @board.line2[2] != 'o' && @board.line2[2] != 'x'
          @board.line2[2] = @player_one.role
          player_turn = false
        elsif player_one_move == '7' && @board.line3[0] != 'o' && @board.line3[0] != 'x'
          @board.line3[0] = @player_one.role
          player_turn = false
        elsif player_one_move == '8' && @board.line3[1] != 'o' && @board.line3[1] != 'x'
          @board.line3[1] = @player_one.role
          player_turn = false
        elsif player_one_move == '9' && @board.line3[2] != 'o' && @board.line3[2] != 'x'
          @board.line3[2] = @player_one.role
          player_turn = false
        end

      else
        puts "#{@player_two.name.colorize(:green)}, choose your move."
        player_two_move = gets.chomp

        if player_two_move == '1' && @board.line1[0] != 'o' && @board.line1[0] != 'x'
          @board.line1[0] = @player_two.role
          player_turn = true
        elsif player_two_move == '2' && @board.line1[1] != 'o' && @board.line1[1] != 'x'
          @board.line1[1] = @player_two.role
          player_turn = true
        elsif player_two_move == '3' && @board.line1[2] != 'o' && @board.line1[2] != 'x'
          @board.line1[2] = @player_two.role
          player_turn = true
        elsif player_two_move == '4' && @board.line2[0] != 'o' && @board.line2[0] != 'x'
          @board.line2[0] = @player_two.role
          player_turn = true
        elsif player_two_move == '5' && @board.line2[1] != 'o' && @board.line2[1] != 'x'
          @board.line2[1] = @player_two.role
          player_turn = true
        elsif player_two_move == '6' && @board.line2[2] != 'o' && @board.line2[2] != 'x'
          @board.line2[2] = @player_two.role
          player_turn = true
        elsif player_two_move == '7' && @board.line3[0] != 'o' && @board.line3[0] != 'x'
          @board.line3[0] = @player_two.role
          player_turn = true
        elsif player_two_move == '8' && @board.line3[1] != 'o' && @board.line3[1] != 'x'
          @board.line3[1] = @player_two.role
          player_turn = true
        elsif player_two_move == '9' && @board.line3[2] != 'o' && @board.line3[2] != 'x'
          @board.line3[2] = @player_two.role
          player_turn = true
        end
      end
      @board.show_board(@player_one, @player_two)
      if @board.line1 == %w[x x x] || @board.line2 == %w[x x x] || @board.line3 == %w[x x x]
        play_match = false
        if @player_one.role == 'x'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1 == %w[o o o] || @board.line2 == %w[o o o] || @board.line3 == %w[o o o]
        play_match = false
        if @player_one.role == 'o'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[2] == 'x' && @board.line2[1] == 'x' && @board.line3[0] == 'x'
        play_match = false
        if @player_one.role == 'x'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[2] == 'o' && @board.line2[1] == 'o' && @board.line3[0] == 'o'
        play_match = false
        if @player_one.role == 'o'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[0] == 'x' && @board.line2[1] == 'x' && @board.line3[2] == 'x'
        play_match = false
        if @player_one.role == 'x'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[0] == 'o' && @board.line2[1] == 'o' && @board.line3[0] == 'o'
        play_match = false
        if @player_one.role == 'o'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[0] == 'x' && @board.line2[0] == 'x' && @board.line3[0] == 'x'
        play_match = false
        if @player_one.role == 'x'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[0] == 'o' && @board.line2[0] == 'o' && @board.line3[0] == 'o'
        play_match = false
        if @player_one.role == 'o'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[1] == 'x' && @board.line2[1] == 'x' && @board.line3[1] == 'x'
        play_match = false
        if @player_one.role == 'x'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[1] == 'o' && @board.line2[1] == 'o' && @board.line3[1] == 'o'
        play_match = false
        if @player_one.role == 'o'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[2] == 'x' && @board.line2[2] == 'x' && @board.line3[2] == 'x'
        play_match = false
        if @player_one.role == 'x'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif @board.line1[2] == 'o' && @board.line2[2] == 'o' && @board.line3[2] == 'o'
        play_match = false
        if @player_one.role == 'o'
          puts "FINISH! #{@player_one.name.colorize(:yellow)} won!"
        else
          puts "FINISH! #{@player_two.name.colorize(:green)} won!"
        end
      elsif counter_turn >= 9
        play_match = false
        puts "Cat's game! FINISH!".colorize(:red)
      end
    end
  end

  private

  def set_players
    @player_one.name = @player_one.ask_player_one_name
    @player_one.role = @player_one.ask_player_one_role

    @player_two.name = @player_two.ask_player_two_name
    @player_two.choose_player_two_role(@player_one)
  end
end
