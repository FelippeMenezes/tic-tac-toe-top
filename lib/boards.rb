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
    puts " #{update_line(@line_1, player_one, player_two)} "
    puts "-----------"
    puts " #{update_line(@line_2, player_one, player_two)} "
    puts "-----------"
    puts " #{update_line(@line_3, player_one, player_two)} "
    puts ""
  end

  private

  def update_line(line, player_one, player_two)
    line.map { |item| paint_player_item(item, player_one, player_two) }.join(' | ')
  end

  def paint_player_item(item, player_one, player_two)
    if item == player_one.role
      item.colorize(:yellow)
    elsif item == player_two.role
      item.colorize(:green)
    else
      item
    end
  end
end
