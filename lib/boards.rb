# frozen_string_literal: true

class Board
  attr_accessor :line_1, :line_2, :line_3

  def initialize(line_1, line_2, line_3)
    @line_1 = line_1
    @line_2 = line_2
    @line_3 = line_3
  end
end
