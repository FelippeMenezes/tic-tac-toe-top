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

  def show_board
    puts "\n"
    puts " #{@line_1.join(' | ')} "
    puts "-----------"
    puts " #{@line_2.join(' | ')} "
    puts "-----------"
    puts " #{@line_3.join(' | ')} "
    puts "\n"
  end
end
