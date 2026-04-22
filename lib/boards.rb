# frozen_string_literal: true

class Board
  attr_accessor :line_1, :line_2, :line_3

  def initialize(line_1, line_2, line_3)
    @line_1 = line_1
    @line_2 = line_2
    @line_3 = line_3
  end

  def self.create_board
    line_1 = ["1", "2", "3"]
    line_2 = ["4", "5", "6"]
    line_3 = ["7", "8", "9"]
    Board.new(line_1, line_2, line_3)
  end

  def show_board(player_one, player_two)
    puts ""
    puts " #{format_line(@line_1, player_one, player_two)} "
    puts "-----------"
    puts " #{format_line(@line_2, player_one, player_two)} "
    puts "-----------"
    puts " #{format_line(@line_3, player_one, player_two)} "
    puts ""
  end

  private

  def format_line(line, player_one, player_two)
    line.map { |cell| color_piece(cell, player_one, player_two) }.join(' | ')
  end

  def color_piece(cell, player_one, player_two)
    if cell == player_one.role
      cell.colorize(:yellow)
    elsif cell == player_two.role
      cell.colorize(:green)
    else
      cell
    end
  end
end
