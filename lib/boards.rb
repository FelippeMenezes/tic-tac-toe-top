# frozen_string_literal: true

# This class is a board of Tic-Tac-Toe.
class Board
  attr_accessor :line1, :line2, :line3

  def initialize(line1, line2, line3)
    @line1 = line1
    @line2 = line2
    @line3 = line3
  end

  def self.create_board
    line1 = %w[1 2 3]
    line2 = %w[4 5 6]
    line3 = %w[7 8 9]
    Board.new(line1, line2, line3)
  end

  def show_board(player_one, player_two)
    puts ''
    puts " #{update_line(@line1, player_one, player_two)} "
    puts '-----------'
    puts " #{update_line(@line2, player_one, player_two)} "
    puts '-----------'
    puts " #{update_line(@line3, player_one, player_two)} "
    puts ''
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
