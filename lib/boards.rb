# frozen_string_literal: true

class Board
  attr_accessor :line_1, :line_2, :line_3

  def initialize(line_1, line_2, line_3)
    @line_1 = line_1
    @line_2 = line_2
    @line_3 = line_3
  end

  def self.create_board
    line_1 = ["A1", "A2", "A3"]
    line_2 = ["B1", "B2", "B3"]
    line_3 = ["C1", "C2", "C3"]
    Board.new(line_1, line_2, line_3)
  end
end
