# frozen_string_literal: true
require 'pry-byebug'

class Match
  attr_accessor :player_one, :player_two, :board

  def initialize(player_one, player_two, board)
    @player_one = player_one
    @player_two = player_two
    @board = board
  end

  def set_players
    @player_one.name = @player_one.ask_player_one_name
    @player_one.role = @player_one.ask_player_one_role

    @player_two.name = @player_two.ask_player_two_name
    @player_two.set_player_two_role(@player_one)
  end

  def start_match
    set_players
    @board.show_board

    play_match = true
    player_turn = true
    counter_turn = 0

    while play_match == true
      counter_turn += 1
      if player_turn == true
        puts "#{@player_one.name}, choose your move."
        player_one_move = gets.chomp

        if player_one_move == "1" && @board.line_1[0] != "o" && @board.line_1[0] != "x"
          @board.line_1[0] = @player_one.role
          player_turn = false
        elsif player_one_move == "2" && @board.line_1[1] != "o" && @board.line_1[1] != "x"
          @board.line_1[1] = @player_one.role
          player_turn = false
        elsif player_one_move == "3" && @board.line_1[2] != "o" && @board.line_1[2] != "x"
          @board.line_1[2] = @player_one.role
          player_turn = false
        elsif player_one_move == "4" && @board.line_2[0] != "o" && @board.line_2[0] != "x"
          @board.line_2[0] = @player_one.role
          player_turn = false
        elsif player_one_move == "5" && @board.line_2[1] != "o" && @board.line_2[1] != "x"
          @board.line_2[1] = @player_one.role
          player_turn = false
        elsif player_one_move == "6" && @board.line_2[2] != "o" && @board.line_2[2] != "x"
          @board.line_2[2] = @player_one.role
          player_turn = false
        elsif player_one_move == "7" && @board.line_3[0] != "o" && @board.line_3[0] != "x"
          @board.line_3[0] = @player_one.role
          player_turn = false
        elsif player_one_move == "8" && @board.line_3[1] != "o" && @board.line_3[1] != "x"
          @board.line_3[1] = @player_one.role
          player_turn = false
        elsif player_one_move == "9" && @board.line_3[2] != "o" && @board.line_3[2] != "x"
          @board.line_3[2] = @player_one.role
          player_turn = false
        end

      else
        puts "#{@player_two.name}, choose your move."
        player_two_move = gets.chomp

        if player_two_move == "1" && @board.line_1[0] != "o" && @board.line_1[0] != "x"
          @board.line_1[0] = @player_two.role
          player_turn = true
        elsif player_two_move == "2" && @board.line_1[1] != "o" && @board.line_1[1] != "x"
          @board.line_1[1] = @player_two.role
          player_turn = true
        elsif player_two_move == "3" && @board.line_1[2] != "o" && @board.line_1[2] != "x"
          @board.line_1[2] = @player_two.role
          player_turn = true
        elsif player_two_move == "4" && @board.line_2[0] != "o" && @board.line_2[0] != "x"
          @board.line_2[0] = @player_two.role
          player_turn = true
        elsif player_two_move == "5" && @board.line_2[1] != "o" && @board.line_2[1] != "x"
          @board.line_2[1] = @player_two.role
          player_turn = true
        elsif player_two_move == "6" && @board.line_2[2] != "o" && @board.line_2[2] != "x"
          @board.line_2[2] = @player_two.role
          player_turn = true
        elsif player_two_move == "7" && @board.line_3[0] != "o" && @board.line_3[0] != "x"
          @board.line_3[0] = @player_two.role
          player_turn = true
        elsif player_two_move == "8" && @board.line_3[1] != "o" && @board.line_3[1] != "x"
          @board.line_3[1] = @player_two.role
          player_turn = true
        elsif player_two_move == "9" && @board.line_3[2] != "o" && @board.line_3[2] != "x"
          @board.line_3[2] = @player_two.role
          player_turn = true
        end
      end
      @board.show_board
      if @board.line_1 == ["x", "x", "x"] || @board.line_2 == ["x", "x", "x"] || @board.line_3 == ["x", "x", "x"]
        play_match = false
        if @player_one.role == "x"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1 == ["o", "o", "o"] || @board.line_2 == ["o", "o", "o"] || @board.line_3 == ["o", "o", "o"]
        play_match = false
        if @player_one.role == "o"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[2] == "x" && @board.line_2[1] == "x" && @board.line_3[0] == "x"
        play_match = false
        if @player_one.role == "x"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[2] == "o" && @board.line_2[1] == "o" && @board.line_3[0] == "o"
        play_match = false
        if @player_one.role == "o"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[0] == "x" && @board.line_2[1] == "x" && @board.line_3[2] == "x"
        play_match = false
        if @player_one.role == "x"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[0] == "o" && @board.line_2[1] == "o" && @board.line_3[0] == "o"
        play_match = false
        if @player_one.role == "o"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[0] == "x" && @board.line_2[0] == "x" && @board.line_3[0] == "x"
        play_match = false
        if @player_one.role == "x"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[0] == "o" && @board.line_2[0] == "o" && @board.line_3[0] == "o"
        play_match = false
        if @player_one.role == "o"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[1] == "x" && @board.line_2[1] == "x" && @board.line_3[1] == "x"
        play_match = false
        if @player_one.role == "x"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[1] == "o" && @board.line_2[1] == "o" && @board.line_3[1] == "o"
        play_match = false
        if @player_one.role == "o"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[2] == "x" && @board.line_2[2] == "x" && @board.line_3[2] == "x"
        play_match = false
        if @player_one.role == "x"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif @board.line_1[2] == "o" && @board.line_2[2] == "o" && @board.line_3[2] == "o"
        play_match = false
        if @player_one.role == "o"
          play_match = false
          puts "FINISH! #{@player_one.name} won!"
        else
          play_match = false
          puts "FINISH! #{@player_two.name} won!"
        end
      elsif counter_turn >=9
        play_match = false
        puts "Cat's game! FINISH!"
      end
    end

  end
end
